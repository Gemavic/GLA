#!/usr/bin/env python3
"""
Universal script to extract exam questions from JAMB PDF files.
"""

import re
import json
import sys
from pathlib import Path

def extract_text_from_pdf(pdf_path):
    """Extract text from PDF"""
    try:
        import pdfplumber
        print(f"Extracting text from: {pdf_path}")
        with pdfplumber.open(pdf_path) as pdf:
            full_text = []
            for page_num, page in enumerate(pdf.pages, 1):
                text = page.extract_text()
                if text:
                    full_text.append(text)
                if page_num % 10 == 0:
                    print(f"  Processed {page_num} pages...")
            return '\n'.join(full_text)
    except ImportError:
        print("pdfplumber not available")
        return None

def parse_questions(text, subject_name):
    """Parse questions from text"""
    lines = text.split('\n')
    questions = []
    current_question = None
    current_options = []
    current_year = None

    for line in lines:
        line = line.strip()
        if not line:
            continue

        # Detect year
        year_match = re.search(r'\b(19[89]\d|20[0-2]\d)\b', line)
        if year_match and len(line) < 50:
            potential_year = int(year_match.group(1))
            if 1980 <= potential_year <= 2024:
                current_year = potential_year

        # Detect question
        question_match = re.match(r'^(\d+)[\.\)]\s+(.+)', line)
        if question_match and len(line) > 20:
            if current_question and len(current_options) >= 4:
                questions.append({
                    'year': current_year,
                    'question': current_question,
                    'options': current_options[:4],
                    'subject': subject_name
                })
            current_question = question_match.group(2).strip()
            current_options = []
            continue

        # Detect options
        option_match = re.match(r'^[\(\s]*([A-E])[\.\)]\s*(.+)$', line)
        if option_match and current_question:
            option_text = option_match.group(2).strip()
            if option_text and len(option_text) < 200:
                current_options.append(option_text)

    if current_question and len(current_options) >= 4:
        questions.append({
            'year': current_year,
            'question': current_question,
            'options': current_options[:4],
            'subject': subject_name
        })

    return questions

print("PDF extraction script ready")
