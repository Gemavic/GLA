#!/usr/bin/env python3
"""
Manual extraction script for the specific DOCX format.
Handles the unique structure where options are often unlabeled.
"""

import re
import json
import zipfile
import xml.etree.ElementTree as ET

def extract_paragraphs(docx_path):
    """Extract paragraphs from DOCX"""
    with zipfile.ZipFile(docx_path, 'r') as zip_ref:
        xml_content = zip_ref.read('word/document.xml')

    tree = ET.fromstring(xml_content)
    namespace = {'w': 'http://schemas.openxmlformats.org/wordprocessingml/2006/main'}

    paragraphs = []
    for para in tree.findall('.//w:p', namespace):
        text_parts = []
        for text_elem in para.findall('.//w:t', namespace):
            if text_elem.text:
                text_parts.append(text_elem.text)
        if text_parts:
            paragraphs.append(''.join(text_parts).strip())

    return paragraphs

def parse_questions_manual(paragraphs):
    """Parse questions with manual logic for this specific format"""
    questions = []
    current_year = None
    i = 0

    while i < len(paragraphs):
        line = paragraphs[i].strip()

        # Detect year
        if 'Use of English' in line and re.search(r'\d{4}', line):
            year_match = re.search(r'(\d{4})', line)
            if year_match:
                current_year = int(year_match.group(1))
                print(f"Processing year: {current_year}")

        # Skip headers and section titles
        if (not line or len(line) < 20 or
            line.upper() in ['COMPREHENSION', 'LEXIS AND STRUCTURE', 'ORAL FORMS', 'ANSWERS', 'JAMB, IJMB,JUPEB&AL', 'Questions And Answers'] or
            'Read' in line and 'passage' in line.lower()):
            i += 1
            continue

        # Question patterns
        question_starts = [
            'From the passage',
            'In the passage',
            'According to the passage',
            'The word',
            'The phrase',
            'The expression',
            'Which of',
            'What',
            'Who',
            'Where',
            'When',
            'Why',
            'How',
            'Choose',
            'An eye to',
            'Combat malnutrition',
            'Deprived of',
        ]

        is_question = any(line.startswith(start) for start in question_starts)

        if is_question:
            question_text = line
            options = []
            j = i + 1

            # Collect the next few lines as potential options
            option_candidates = []
            while j < len(paragraphs) and len(option_candidates) < 10:
                next_line = paragraphs[j].strip()

                # Stop if we hit another question
                if any(next_line.startswith(start) for start in question_starts):
                    break

                # Stop if line is too long (likely passage text)
                if len(next_line) > 200:
                    break

                # Skip empty lines
                if not next_line:
                    j += 1
                    continue

                option_candidates.append(next_line)
                j += 1

            # Extract options from candidates
            # Pattern 1: Lines with A. B. C. D. markers
            labeled_options = []
            for cand in option_candidates:
                # Check for inline options like "A. text B. text C. text"
                if re.search(r'[A-E]\.', cand):
                    # Split by letter markers
                    parts = re.split(r'([A-E]\.)', cand)
                    for k in range(1, len(parts), 2):
                        if k+1 < len(parts):
                            opt_text = parts[k+1].strip()
                            # Clean up
                            opt_text = re.sub(r'^[\s\-]+', '', opt_text)
                            opt_text = opt_text.split('. ')[0] if '. ' in opt_text else opt_text
                            if opt_text and len(opt_text) < 150:
                                labeled_options.append(opt_text)

            # Pattern 2: Consecutive unlabeled lines (like lines 11-15 in the example)
            if not labeled_options and len(option_candidates) >= 4:
                # Take first 4-5 short lines as options
                unlabeled_options = []
                for cand in option_candidates[:7]:
                    # Skip lines that don't look like options
                    if (len(cand) < 15 or len(cand) > 150 or
                        cand[0].isupper() and cand.endswith('.')):
                        continue
                    unlabeled_options.append(cand)

                if len(unlabeled_options) >= 4:
                    options = unlabeled_options[:4]

            # Use labeled options if found
            if labeled_options and len(labeled_options) >= 4:
                options = labeled_options[:4]

            # Save question if we have options
            if len(options) >= 4:
                # Determine topic
                if 'word' in question_text.lower() or 'phrase' in question_text.lower():
                    topic = 'Vocabulary'
                elif 'passage' in question_text.lower():
                    topic = 'Reading Comprehension'
                else:
                    topic = 'General'

                questions.append({
                    'year': current_year,
                    'question': question_text,
                    'options': [opt[:200] for opt in options],  # Limit option length
                    'topic': topic
                })

                i = j
                continue

        i += 1

    return questions

def create_migration_batches(questions, base_filename='manual_extracted'):
    """Create SQL migration files"""
    if not questions:
        print("No questions to create migrations for!")
        return []

    # Group by year
    by_year = {}
    for q in questions:
        year = q.get('year')
        if year:
            if year not in by_year:
                by_year[year] = []
            by_year[year].append(q)

    migrations = []
    batch_num = 1

    for year in sorted(by_year.keys()):
        year_questions = by_year[year]

        # Create batches of 40 questions
        for i in range(0, len(year_questions), 40):
            batch = year_questions[i:i+40]

            sql_values = []
            for q in batch:
                question = q['question'].replace("'", "''")
                options_json = json.dumps(q['options']).replace("'", "''")
                topic = q['topic'].replace("'", "''")

                sql_value = f"""  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    '{question}',
    'multiple_choice',
    '{options_json}'::jsonb,
    'A',
    'Past question from {year}',
    'medium',
    {year},
    '{topic}'
  )"""
                sql_values.append(sql_value)

            timestamp = f"20260217{100000 + batch_num:05d}"
            filename = f"{timestamp}_add_historical_year_{year}_batch_{batch_num}.sql"

            content = f"""/*
  # Add Historical Use of English Questions - Year {year} Batch {batch_num}

  1. Purpose
    - Add questions from {year}
    - Manually extracted from DOCX compilation
    - {len(batch)} questions

  2. Content
    - Topics: {', '.join(set(q['topic'] for q in batch))}

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
{',\n'.join(sql_values)};
"""

            filepath = f'/tmp/{filename}'
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(content)

            migrations.append(filepath)
            print(f"Created: {filename}")
            batch_num += 1

    return migrations

def main():
    docx_path = '/tmp/cc-agent/63523149/project/resources/jamb_exams/USE-OF-ENGLISH._JAMB_&_A-LEVEL.docx'

    print("="*70)
    print("EXTRACTING QUESTIONS FROM DOCX")
    print("="*70)

    # Extract paragraphs
    paragraphs = extract_paragraphs(docx_path)
    print(f"Extracted {len(paragraphs)} paragraphs\n")

    # Parse questions
    questions = parse_questions_manual(paragraphs)

    print("\n" + "="*70)
    print("EXTRACTION SUMMARY")
    print("="*70)
    print(f"Total questions extracted: {len(questions)}\n")

    if questions:
        # Statistics
        by_year = {}
        by_topic = {}
        for q in questions:
            year = q.get('year')
            topic = q.get('topic', 'Unknown')
            by_year[year] = by_year.get(year, 0) + 1
            by_topic[topic] = by_topic.get(topic, 0) + 1

        print("Questions by year:")
        for year in sorted(by_year.keys()):
            print(f"  {year}: {by_year[year]} questions")

        print("\nQuestions by topic:")
        for topic, count in sorted(by_topic.items()):
            print(f"  {topic}: {count} questions")

        # Save to JSON
        json_path = '/tmp/manual_extracted_questions.json'
        with open(json_path, 'w', encoding='utf-8') as f:
            json.dump(questions, f, indent=2, ensure_ascii=False)
        print(f"\nSaved questions to: {json_path}")

        # Create SQL migrations
        print("\n" + "="*70)
        print("CREATING SQL MIGRATIONS")
        print("="*70)
        migrations = create_migration_batches(questions)
        print(f"\nCreated {len(migrations)} migration files in /tmp/")

        # Show sample
        print("\n" + "="*70)
        print("SAMPLE QUESTIONS")
        print("="*70)
        for i, q in enumerate(questions[:5], 1):
            print(f"\n{i}. Year {q['year']} - {q['topic']}")
            print(f"   Q: {q['question'][:80]}...")
            print(f"   Options: {', '.join(opt[:30] + '...' for opt in q['options'][:2])}")

        print("\n" + "="*70)
        print("NEXT STEPS")
        print("="*70)
        print("1. Review extracted questions in JSON file")
        print("2. Apply migrations using Supabase MCP tool")
        print("3. Verify questions in database")
    else:
        print("No questions were extracted. Check the DOCX format.")

if __name__ == '__main__':
    main()
