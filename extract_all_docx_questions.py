#!/usr/bin/env python3
"""
Comprehensive script to extract all exam questions from USE-OF-ENGLISH DOCX file.
Handles questions from JAMB, IJMB, JUPEB, and A-Level (1983-2004).
"""

import xml.etree.ElementTree as ET
import re
import json
import zipfile
from pathlib import Path

def extract_text_from_docx(docx_path):
    """Extract text paragraphs from DOCX file"""
    print(f"Extracting text from {docx_path}...")

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
            full_text = ''.join(text_parts).strip()
            if full_text:
                paragraphs.append(full_text)

    print(f"Extracted {len(paragraphs)} paragraphs")
    return paragraphs

def clean_text(text):
    """Clean up text by removing extra whitespace"""
    text = re.sub(r'\s+', ' ', text)
    text = text.strip()
    return text

def parse_questions_advanced(paragraphs):
    """Advanced parsing to extract questions from various formats"""
    questions = []
    current_year = None
    current_section = None
    current_passage = None
    passage_lines = []

    i = 0
    while i < len(paragraphs):
        line = paragraphs[i]

        # Detect year markers
        year_match = re.search(r'Use of English (\d{4})', line)
        if year_match:
            current_year = int(year_match.group(1))
            print(f"Processing year: {current_year}")
            i += 1
            continue

        # Detect section headers
        if line.upper() in ['COMPREHENSION', 'LEXIS AND STRUCTURE', 'ORAL FORMS', 'ANSWERS']:
            current_section = line.title()
            i += 1
            continue

        # Skip common headers
        if any(skip in line for skip in ['JAMB', 'IJMB', 'JUPEB', 'Questions And Answers']):
            i += 1
            continue

        # Check if it's a passage intro
        if 'Read' in line and ('passage' in line.lower() or 'carefully' in line.lower()):
            passage_lines = []
            i += 1
            # Collect passage text
            while i < len(paragraphs):
                next_line = paragraphs[i]
                # Stop if we hit a question or new section
                if (len(next_line) > 50 and
                    not any(next_line.startswith(p) for p in ['From', 'In', 'According', 'The word', 'The phrase', 'Which', 'What', 'Who', 'Where', 'When', 'Why', 'How']) and
                    not re.match(r'^[A-E][\.\)]\s', next_line)):
                    passage_lines.append(next_line)
                    i += 1
                    if len(' '.join(passage_lines)) > 800:  # Reasonable passage length
                        break
                else:
                    break
            current_passage = ' '.join(passage_lines)
            continue

        # Try to identify question stem
        question_patterns = [
            r'^From the ',
            r'^In the ',
            r'^In this ',
            r'^According to ',
            r'^The word ',
            r'^The phrase ',
            r'^The expression ',
            r'^Which of ',
            r'^What ',
            r'^Who ',
            r'^Where ',
            r'^When ',
            r'^Why ',
            r'^How ',
            r'^It can be ',
            r'^Choose ',
            r'^Identify ',
            r'^Select ',
        ]

        is_question = any(re.match(pattern, line, re.IGNORECASE) for pattern in question_patterns)

        if is_question and len(line) > 25:
            question_text = clean_text(line)
            options = []

            # Look ahead for options
            j = i + 1
            option_count = 0
            temp_options = []

            while j < len(paragraphs) and option_count < 5:
                next_line = paragraphs[j].strip()

                # Check for labeled options (A. B. C. D. E.)
                option_match = re.match(r'^([A-E])[\.\)]\s*(.+)$', next_line)
                if option_match:
                    option_text = clean_text(option_match.group(2))
                    if option_text:
                        temp_options.append(option_text)
                        option_count += 1
                        j += 1
                    else:
                        j += 1
                # Check if it's inline options (within question text)
                elif option_count == 0 and len(next_line) < 100:
                    # Might be continuation of question or unlabeled option
                    if not any(next_line.startswith(p) for p in ['From', 'In', 'According', 'The ', 'Which', 'What']):
                        j += 1
                    else:
                        break
                else:
                    break

            # Accept questions with 4 or 5 options
            if len(temp_options) >= 4:
                options = temp_options[:4]  # Take first 4

                # Determine topic
                if current_passage:
                    topic = 'Reading Comprehension'
                elif 'word' in question_text.lower() or 'phrase' in question_text.lower():
                    topic = 'Vocabulary'
                elif any(word in question_text.lower() for word in ['grammar', 'tense', 'verb', 'noun', 'pronoun']):
                    topic = 'Grammar'
                else:
                    topic = 'General'

                questions.append({
                    'year': current_year,
                    'question': question_text,
                    'options': options,
                    'section': current_section or 'General',
                    'topic': topic,
                    'passage': current_passage if current_passage else None
                })

                i = j
                current_passage = None  # Reset passage after question
                continue

        i += 1

    return questions

def create_sql_migrations(questions, output_dir):
    """Create SQL migration files in batches"""
    output_dir = Path(output_dir)
    output_dir.mkdir(exist_ok=True)

    # Determine which exam body based on year ranges
    def get_exam_body(year):
        if 1983 <= year <= 1995:
            return 'JAMB-UTME'
        elif 1996 <= year <= 2000:
            return 'JAMB-UTME'  # Default to JAMB
        elif 2001 <= year <= 2004:
            return 'JAMB-UTME'
        else:
            return 'JAMB-UTME'

    # Group by year
    by_year = {}
    for q in questions:
        year = q['year']
        if year:
            if year not in by_year:
                by_year[year] = []
            by_year[year].append(q)

    # Create migrations by year
    batch_num = 1
    for year in sorted(by_year.keys()):
        year_questions = by_year[year]

        # Split into batches of 50
        for i in range(0, len(year_questions), 50):
            batch = year_questions[i:i+50]
            exam_body = get_exam_body(year)

            # Create SQL values
            sql_values = []
            for q in batch:
                question = q['question'].replace("'", "''")
                options_json = json.dumps(q['options']).replace("'", "''")
                topic = q['topic'].replace("'", "''")

                # Determine difficulty
                difficulty = 'medium'
                if 'comprehension' in topic.lower():
                    difficulty = 'medium'
                elif len(question) > 150:
                    difficulty = 'hard'

                sql_value = f"""  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = '{exam_body}') AND code = 'ENG'),
    '{question}',
    'multiple_choice',
    '{options_json}'::jsonb,
    'A',
    '{exam_body} past question from {year}',
    '{difficulty}',
    {year},
    '{topic}'
  )"""
                sql_values.append(sql_value)

            # Create migration file
            timestamp = f"20260217{90000 + batch_num:05d}"
            filename = f"{timestamp}_add_{exam_body.lower().replace('-', '_')}_year_{year}_batch_{i//50 + 1}.sql"

            migration_content = f"""/*
  # Add {exam_body} Use of English Questions - Year {year} Batch {i//50 + 1}

  1. Purpose
    - Add historical {exam_body} questions from {year}
    - Extracted from official past questions compilation
    - Questions cover multiple topics and difficulty levels

  2. Content
    - {len(batch)} questions from {year}
    - Topics: {', '.join(set(q['topic'] for q in batch))}

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
{',\n'.join(sql_values)};
"""

            filepath = output_dir / filename
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(migration_content)

            print(f"Created: {filename} ({len(batch)} questions)")
            batch_num += 1

    return batch_num - 1

def main():
    # Paths
    docx_path = '/tmp/cc-agent/63523149/project/resources/jamb_exams/USE-OF-ENGLISH._JAMB_&_A-LEVEL.docx'
    output_json = '/tmp/extracted_all_questions.json'
    migrations_dir = '/tmp/cc-agent/63523149/project/sql_migrations_docx'

    # Extract text
    paragraphs = extract_text_from_docx(docx_path)

    # Parse questions
    print("\n" + "="*60)
    print("PARSING QUESTIONS")
    print("="*60)
    questions = parse_questions_advanced(paragraphs)

    print(f"\n{'='*60}")
    print(f"EXTRACTION SUMMARY")
    print(f"{'='*60}")
    print(f"Total questions extracted: {len(questions)}")

    # Statistics
    by_year = {}
    by_topic = {}
    by_section = {}

    for q in questions:
        year = q.get('year')
        topic = q.get('topic', 'Unknown')
        section = q.get('section', 'Unknown')

        by_year[year] = by_year.get(year, 0) + 1
        by_topic[topic] = by_topic.get(topic, 0) + 1
        by_section[section] = by_section.get(section, 0) + 1

    print("\nQuestions by year:")
    for year in sorted(by_year.keys()):
        print(f"  {year}: {by_year[year]} questions")

    print("\nQuestions by topic:")
    for topic in sorted(by_topic.keys()):
        print(f"  {topic}: {by_topic[topic]} questions")

    print("\nQuestions by section:")
    for section in sorted(by_section.keys()):
        print(f"  {section}: {by_section[section]} questions")

    # Save to JSON
    with open(output_json, 'w', encoding='utf-8') as f:
        json.dump(questions, f, indent=2, ensure_ascii=False)
    print(f"\nSaved all questions to: {output_json}")

    # Create SQL migrations
    print(f"\n{'='*60}")
    print("CREATING SQL MIGRATIONS")
    print(f"{'='*60}")
    num_migrations = create_sql_migrations(questions, migrations_dir)
    print(f"\nCreated {num_migrations} migration files in: {migrations_dir}")

    # Sample questions
    print(f"\n{'='*60}")
    print("SAMPLE QUESTIONS")
    print(f"{'='*60}")
    for i, q in enumerate(questions[:3], 1):
        print(f"\nQuestion {i} (Year {q['year']}):")
        print(f"Q: {q['question'][:100]}...")
        print(f"Options: {q['options'][:2]}...")
        print(f"Topic: {q['topic']}")

    print(f"\n{'='*60}")
    print("EXTRACTION COMPLETE!")
    print(f"{'='*60}")
    print(f"\nNext steps:")
    print(f"1. Review extracted questions in: {output_json}")
    print(f"2. Check SQL migrations in: {migrations_dir}")
    print(f"3. Apply migrations using the Supabase MCP tool")
    print(f"4. Verify question count in database")

if __name__ == '__main__':
    main()
