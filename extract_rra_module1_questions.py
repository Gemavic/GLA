#!/usr/bin/env python3
"""
Extract RRA Module 1 questions from PDF
"""
import json
import re
import sys

try:
    import PyPDF2
except ImportError:
    print("Installing PyPDF2...")
    import subprocess
    subprocess.check_call([sys.executable, "-m", "pip", "install", "PyPDF2", "--quiet"])
    import PyPDF2

def extract_questions_from_pdf(pdf_path):
    """Extract questions from RRA Module 1 PDF"""
    questions = []

    try:
        with open(pdf_path, 'rb') as file:
            pdf_reader = PyPDF2.PdfReader(file)
            print(f"Total pages: {len(pdf_reader.pages)}")

            full_text = ""
            for page_num in range(len(pdf_reader.pages)):
                page = pdf_reader.pages[page_num]
                text = page.extract_text()
                full_text += text + "\n"

            # Save full text for debugging
            with open('rra_module1_extracted_text.txt', 'w', encoding='utf-8') as f:
                f.write(full_text)

            print(f"Extracted {len(full_text)} characters")

            # Pattern to match questions with format:
            # Number. Question text
            # A. Option
            # B. Option
            # C. Option
            # D. Option

            lines = full_text.split('\n')
            current_question = None
            current_options = []
            question_number = 0

            for i, line in enumerate(lines):
                line = line.strip()
                if not line:
                    continue

                # Check if line starts with a number followed by period or parenthesis
                question_match = re.match(r'^(\d+)[\.\)]\s*(.+)$', line)

                if question_match:
                    # Save previous question if exists
                    if current_question and len(current_options) == 4:
                        questions.append({
                            'number': question_number,
                            'question': current_question,
                            'options': current_options,
                            'answer': None  # Will be manually added
                        })

                    # Start new question
                    question_number = int(question_match.group(1))
                    current_question = question_match.group(2).strip()
                    current_options = []

                # Check for options A, B, C, D
                option_match = re.match(r'^([A-D])[\.\)]\s*(.+)$', line)
                if option_match and current_question:
                    option_letter = option_match.group(1)
                    option_text = option_match.group(2).strip()
                    current_options.append({
                        'letter': option_letter,
                        'text': option_text
                    })

            # Don't forget the last question
            if current_question and len(current_options) == 4:
                questions.append({
                    'number': question_number,
                    'question': current_question,
                    'options': current_options,
                    'answer': None
                })

            print(f"Extracted {len(questions)} questions")

            # Save to JSON
            with open('rra_module1_questions.json', 'w', encoding='utf-8') as f:
                json.dump(questions, f, indent=2, ensure_ascii=False)

            print("Questions saved to rra_module1_questions.json")

            # Print first 3 questions as sample
            print("\n=== Sample Questions ===")
            for q in questions[:3]:
                print(f"\nQ{q['number']}: {q['question']}")
                for opt in q['options']:
                    print(f"  {opt['letter']}. {opt['text']}")

            return questions

    except Exception as e:
        print(f"Error: {e}")
        import traceback
        traceback.print_exc()
        return []

if __name__ == '__main__':
    pdf_path = 'resources/rra_exams/RETIREMENT_REGISTER_ANALYST_-1.pdf'
    questions = extract_questions_from_pdf(pdf_path)
    print(f"\nTotal questions extracted: {len(questions)}")
