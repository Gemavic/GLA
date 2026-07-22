#!/usr/bin/env python3
"""
LUTH Exam Questions Extraction Script

This script helps extract and organize questions from the LUTH PDF file.
It can work with:
1. OCR-extracted text files
2. Manually formatted CSV/JSON files
3. Direct PDF text (if searchable)

Usage:
    python extract_luth_questions.py --input extracted_text.txt --output luth_questions.json
    python extract_luth_questions.py --mode manual --input questions.csv --output luth_questions.json
"""

import json
import re
import sys
import argparse
from pathlib import Path
from typing import List, Dict, Tuple, Optional
from dataclasses import dataclass, asdict
from datetime import datetime


@dataclass
class ExamQuestion:
    """Represents a single exam question"""
    subject_name: str
    question_text: str
    question_type: str = "multiple_choice"
    options: List[str] = None
    correct_answer: str = ""
    explanation: str = ""
    difficulty: str = "medium"
    topic: str = ""
    year: int = 2024
    marks: int = 1

    def __post_init__(self):
        if self.options is None:
            self.options = []

    def validate(self) -> Tuple[bool, List[str]]:
        """Validate question data"""
        errors = []

        if not self.question_text.strip():
            errors.append("Question text is empty")

        if self.question_type == "multiple_choice":
            if len(self.options) != 4:
                errors.append(f"Expected 4 options, got {len(self.options)}")
            if self.correct_answer not in self.options:
                errors.append(f"Correct answer '{self.correct_answer}' not in options")

        if self.difficulty not in ["easy", "medium", "hard"]:
            errors.append(f"Invalid difficulty: {self.difficulty}")

        if not 2020 <= self.year <= datetime.now().year:
            errors.append(f"Year {self.year} outside valid range")

        if not 1 <= self.marks <= 3:
            errors.append(f"Marks {self.marks} outside valid range (1-3)")

        return len(errors) == 0, errors


class LUTHQuestionExtractor:
    """Extract LUTH questions from various formats"""

    SUBJECTS = [
        "Nursing & Healthcare Sciences",
        "Anatomy",
        "Physiology",
        "Pathology",
        "Pharmacology",
        "Medical Biochemistry"
    ]

    def __init__(self):
        self.questions: List[ExamQuestion] = []
        self.errors: List[str] = []

    def parse_text_file(self, filepath: Path) -> None:
        """Parse OCR-extracted text file"""
        print(f"Parsing text file: {filepath}")

        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()

        # Split by question patterns
        questions = re.split(r'\n\d+\.\s+', content)

        for q_text in questions[1:]:  # Skip header
            lines = q_text.strip().split('\n')
            if len(lines) < 5:
                continue

            try:
                question_text = lines[0]
                options = []
                correct_answer = ""
                explanation = ""

                # Extract options (typically A), B), C), D) or A., B., C., D.)
                for line in lines[1:]:
                    option_match = re.match(r'^[A-D]\)[)\.]?\s*(.*)', line)
                    if option_match:
                        options.append(option_match.group(1).strip())

                if len(options) >= 4:
                    # Try to find correct answer and explanation
                    for i, line in enumerate(lines):
                        if 'Answer:' in line or 'Correct:' in line:
                            correct_answer = line.split(':')[1].strip()
                        if 'Explanation:' in line or 'Explanation' in line:
                            explanation = '\n'.join(lines[i:i+3])

                    question = ExamQuestion(
                        subject_name=self._detect_subject(question_text),
                        question_text=question_text,
                        options=options[:4],
                        correct_answer=correct_answer or options[0],
                        explanation=explanation,
                        difficulty=self._estimate_difficulty(question_text),
                        topic=self._detect_topic(question_text, options)
                    )

                    valid, errors = question.validate()
                    if valid:
                        self.questions.append(question)
                    else:
                        self.errors.extend(errors)

            except Exception as e:
                self.errors.append(f"Error parsing question: {str(e)}")

    def parse_csv_file(self, filepath: Path) -> None:
        """Parse manually created CSV file"""
        print(f"Parsing CSV file: {filepath}")
        import csv

        with open(filepath, 'r', encoding='utf-8') as f:
            reader = csv.DictReader(f)

            for i, row in enumerate(reader):
                try:
                    question = ExamQuestion(
                        subject_name=row.get('subject_name', 'Nursing & Healthcare Sciences'),
                        question_text=row.get('question_text', ''),
                        question_type=row.get('question_type', 'multiple_choice'),
                        options=json.loads(row.get('options', '[]')),
                        correct_answer=row.get('correct_answer', ''),
                        explanation=row.get('explanation', ''),
                        difficulty=row.get('difficulty', 'medium'),
                        topic=row.get('topic', ''),
                        year=int(row.get('year', 2024)),
                        marks=int(row.get('marks', 1))
                    )

                    valid, errors = question.validate()
                    if valid:
                        self.questions.append(question)
                    else:
                        print(f"Row {i+1} validation errors: {errors}")
                        self.errors.extend(errors)

                except Exception as e:
                    self.errors.append(f"Error parsing CSV row {i+1}: {str(e)}")

    def parse_json_file(self, filepath: Path) -> None:
        """Parse JSON formatted questions"""
        print(f"Parsing JSON file: {filepath}")

        with open(filepath, 'r', encoding='utf-8') as f:
            data = json.load(f)

        questions_data = data.get('questions', [])

        for q_data in questions_data:
            try:
                question = ExamQuestion(**q_data)
                valid, errors = question.validate()
                if valid:
                    self.questions.append(question)
                else:
                    self.errors.extend(errors)
            except Exception as e:
                self.errors.append(f"Error parsing JSON question: {str(e)}")

    def _detect_subject(self, question_text: str) -> str:
        """Detect subject based on question content"""
        text_lower = question_text.lower()

        keywords = {
            "Nursing & Healthcare Sciences": ["hemoglobin", "blood", "pulse", "respiration", "vital"],
            "Anatomy": ["bone", "muscle", "nerve", "organ", "artery", "vein", "skull"],
            "Physiology": ["hormone", "ph", "glucose", "heart rate", "digestion", "metabolism"],
            "Pathology": ["disease", "tumor", "cancer", "infection", "inflammation", "necrosis"],
            "Pharmacology": ["drug", "medication", "inhibitor", "antagonist", "agonist", "receptor"],
            "Medical Biochemistry": ["enzyme", "protein", "vitamin", "lipid", "carbohydrate", "nucleotide"]
        }

        for subject, kwords in keywords.items():
            if any(kw in text_lower for kw in kwords):
                return subject

        return "Nursing & Healthcare Sciences"  # Default

    def _estimate_difficulty(self, question_text: str) -> str:
        """Estimate difficulty based on question complexity"""
        text_lower = question_text.lower()

        hard_indicators = ["calculate", "explain", "analyze", "mechanism", "relationship", "pathway"]
        medium_indicators = ["which", "how", "why", "describe", "compare", "contrast"]

        if any(ind in text_lower for ind in hard_indicators):
            return "hard"
        elif any(ind in text_lower for ind in medium_indicators):
            return "medium"
        else:
            return "easy"

    def _detect_topic(self, question_text: str, options: List[str]) -> str:
        """Detect topic based on question and options content"""
        combined_text = (question_text + " " + " ".join(options)).lower()

        topics = {
            "Hematology": ["blood", "hemoglobin", "rbc", "wbc", "platelet"],
            "Immunology": ["antibody", "immune", "antigen", "lymphocyte", "phagocyte"],
            "Cardiovascular": ["heart", "blood pressure", "artery", "vein", "circulation"],
            "Respiratory": ["lung", "bronchi", "trachea", "breathing", "respiration"],
            "Renal": ["kidney", "nephron", "urine", "filtration", "glomerulus"],
            "Endocrine": ["hormone", "insulin", "glucose", "thyroid", "pancreas"],
            "Skeletal": ["bone", "skeleton", "joint", "cartilage", "ligament"],
            "Muscular": ["muscle", "contraction", "sarcomere", "myosin", "actin"],
            "Nervous": ["nerve", "neuron", "synapse", "brain", "spinal cord"],
            "Pathology": ["disease", "tumor", "infection", "inflammation", "necrosis"],
            "Pharmacology": ["drug", "medication", "enzyme", "receptor", "half-life"],
            "Biochemistry": ["enzyme", "protein", "vitamin", "metabol", "nucleotide"]
        }

        for topic, keywords in topics.items():
            if any(kw in combined_text for kw in keywords):
                return topic

        return "General"

    def export_to_json(self, filepath: Path) -> None:
        """Export questions to JSON format"""
        print(f"Exporting to JSON: {filepath}")

        organized = {}
        for question in self.questions:
            subject = question.subject_name
            if subject not in organized:
                organized[subject] = []
            organized[subject].append(asdict(question))

        output = {
            "metadata": {
                "exam_body": "LUTH",
                "total_questions": len(self.questions),
                "extraction_date": datetime.now().isoformat(),
                "by_subject": {s: len(q) for s, q in organized.items()}
            },
            "questions_by_subject": organized,
            "all_questions": [asdict(q) for q in self.questions]
        }

        with open(filepath, 'w', encoding='utf-8') as f:
            json.dump(output, f, indent=2, ensure_ascii=False)

        print(f"Exported {len(self.questions)} questions")

    def export_to_csv(self, filepath: Path) -> None:
        """Export questions to CSV format"""
        print(f"Exporting to CSV: {filepath}")
        import csv

        with open(filepath, 'w', newline='', encoding='utf-8') as f:
            writer = csv.DictWriter(f, fieldnames=[
                'subject_name', 'question_text', 'question_type', 'options',
                'correct_answer', 'explanation', 'difficulty', 'topic', 'year', 'marks'
            ])

            writer.writeheader()
            for question in self.questions:
                row = asdict(question)
                row['options'] = json.dumps(row['options'])
                writer.writerow(row)

        print(f"Exported {len(self.questions)} questions")

    def export_to_sql(self, filepath: Path) -> None:
        """Export questions as SQL INSERT statements"""
        print(f"Exporting to SQL: {filepath}")

        # Group by subject
        by_subject = {}
        for q in self.questions:
            if q.subject_name not in by_subject:
                by_subject[q.subject_name] = []
            by_subject[q.subject_name].append(q)

        with open(filepath, 'w', encoding='utf-8') as f:
            f.write("-- LUTH Exam Questions\n")
            f.write("-- Auto-generated SQL INSERT statements\n\n")

            for subject, questions in by_subject.items():
                f.write(f"\n-- {subject} ({len(questions)} questions)\n")
                f.write(f"INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic, marks) VALUES\n")

                for i, q in enumerate(questions):
                    options_json = json.dumps(q.options)
                    options_json = options_json.replace("'", "''")  # Escape quotes
                    explanation = q.explanation.replace("'", "''")
                    question_text = q.question_text.replace("'", "''")

                    line = f"  (subject_id, '{question_text}', '{q.question_type}', '{options_json}'::jsonb, '{q.correct_answer}', '{explanation}', '{q.difficulty}', {q.year}, '{q.topic}', {q.marks})"

                    if i < len(questions) - 1:
                        f.write(line + ",\n")
                    else:
                        f.write(line + ";\n")

        print(f"Exported {len(self.questions)} questions to SQL")

    def print_summary(self) -> None:
        """Print extraction summary"""
        print("\n" + "="*60)
        print("EXTRACTION SUMMARY")
        print("="*60)
        print(f"Total questions extracted: {len(self.questions)}")

        by_subject = {}
        by_difficulty = {}
        by_year = {}

        for q in self.questions:
            by_subject[q.subject_name] = by_subject.get(q.subject_name, 0) + 1
            by_difficulty[q.difficulty] = by_difficulty.get(q.difficulty, 0) + 1
            by_year[q.year] = by_year.get(q.year, 0) + 1

        print("\nBy Subject:")
        for subject, count in sorted(by_subject.items()):
            print(f"  {subject}: {count}")

        print("\nBy Difficulty:")
        for diff, count in sorted(by_difficulty.items()):
            print(f"  {diff}: {count}")

        print("\nBy Year:")
        for year, count in sorted(by_year.items()):
            print(f"  {year}: {count}")

        if self.errors:
            print(f"\nErrors encountered: {len(self.errors)}")
            for error in self.errors[:10]:
                print(f"  - {error}")

        print("="*60 + "\n")


def main():
    parser = argparse.ArgumentParser(
        description="Extract LUTH exam questions from various formats"
    )
    parser.add_argument(
        '--input',
        type=Path,
        required=True,
        help='Input file (txt, csv, or json)'
    )
    parser.add_argument(
        '--output',
        type=Path,
        default=Path('luth_questions.json'),
        help='Output file (json, csv, or sql)'
    )
    parser.add_argument(
        '--mode',
        choices=['auto', 'text', 'csv', 'json'],
        default='auto',
        help='Input file mode'
    )

    args = parser.parse_args()

    extractor = LUTHQuestionExtractor()

    # Determine input mode
    if args.mode == 'auto':
        if args.input.suffix == '.csv':
            extractor.parse_csv_file(args.input)
        elif args.input.suffix == '.json':
            extractor.parse_json_file(args.input)
        else:
            extractor.parse_text_file(args.input)
    elif args.mode == 'text':
        extractor.parse_text_file(args.input)
    elif args.mode == 'csv':
        extractor.parse_csv_file(args.input)
    elif args.mode == 'json':
        extractor.parse_json_file(args.input)

    # Export based on output file extension
    if args.output.suffix == '.json':
        extractor.export_to_json(args.output)
    elif args.output.suffix == '.csv':
        extractor.export_to_csv(args.output)
    elif args.output.suffix == '.sql':
        extractor.export_to_sql(args.output)
    else:
        extractor.export_to_json(args.output)

    extractor.print_summary()


if __name__ == '__main__':
    main()
