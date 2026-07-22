#!/usr/bin/env python3
"""
Script to extract exam questions from the USE-OF-ENGLISH DOCX file.
The file contains questions from 1983-2004 for JAMB, IJMB, JUPEB, and A-Level.
"""

import xml.etree.ElementTree as ET
import re
import json

def extract_text_from_docx(docx_path):
    """Extract text from DOCX XML"""
    import zipfile

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
            paragraphs.append(''.join(text_parts))

    return paragraphs

def parse_questions(paragraphs):
    """Parse questions from paragraphs"""
    questions = []
    current_year = None
    current_section = None
    i = 0

    while i < len(paragraphs):
        line = paragraphs[i].strip()

        # Detect year
        if re.match(r'^Use of English (\d{4})', line):
            year_match = re.search(r'(\d{4})', line)
            if year_match:
                current_year = int(year_match.group(1))
                print(f"Processing year: {current_year}")

        # Detect sections
        elif line.upper() in ['COMPREHENSION', 'LEXIS AND STRUCTURE', 'ORAL FORMS']:
            current_section = line.title()

        # Look for questions (multiple patterns)
        elif len(line) > 30 and any(line.startswith(pattern) for pattern in [
            'From the', 'In the', 'According to', 'The word', 'The phrase',
            'Which of', 'What', 'Who', 'Where', 'When', 'Why', 'How'
        ]):
            question_text = line
            options = []

            # Look ahead for options
            j = i + 1
            while j < len(paragraphs) and len(options) < 5:
                next_line = paragraphs[j].strip()

                # Check if it's an option (starts with A. B. C. D. E. or similar)
                option_match = re.match(r'^([A-E])[\.\)]\s*(.+)$', next_line)
                if option_match:
                    options.append(option_match.group(2).strip())
                    j += 1
                elif len(next_line) < 100 and not next_line.startswith(('From', 'In the', 'According', 'Which', 'What')):
                    # Might be a continuation or inline option
                    if len(options) > 0:
                        j += 1
                    else:
                        break
                else:
                    break

            if len(options) >= 4:
                questions.append({
                    'year': current_year,
                    'question': question_text,
                    'options': options[:4],  # Take first 4 options
                    'section': current_section or 'General'
                })
                i = j
                continue

        i += 1

    return questions

# Main execution
if __name__ == '__main__':
    docx_path = '/tmp/cc-agent/63523149/project/resources/jamb_exams/USE-OF-ENGLISH._JAMB_&_A-LEVEL.docx'

    print("Extracting text from DOCX...")
    paragraphs = extract_text_from_docx(docx_path)
    print(f"Extracted {len(paragraphs)} paragraphs")

    print("\nParsing questions...")
    questions = parse_questions(paragraphs)

    print(f"\nTotal questions extracted: {len(questions)}")

    # Save to JSON
    output_file = '/tmp/docx_questions_extracted.json'
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(questions, f, indent=2, ensure_ascii=False)

    print(f"Saved to {output_file}")

    # Print summary
    by_year = {}
    for q in questions:
        year = q.get('year')
        if year:
            by_year[year] = by_year.get(year, 0) + 1

    print("\nQuestions by year:")
    for year in sorted(by_year.keys()):
        print(f"  {year}: {by_year[year]}")
