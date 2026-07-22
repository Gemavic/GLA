#!/usr/bin/env python3
"""
Extract JAMB USE OF ENGLISH questions from PDF and convert to structured JSON.
"""
import json
import re
import PyPDF2

def extract_text_from_pdf(pdf_path):
    """Extract all text from PDF."""
    with open(pdf_path, 'rb') as file:
        pdf_reader = PyPDF2.PdfReader(file)
        text = ""
        for page in pdf_reader.pages:
            page_text = page.extract_text()
            text += page_text + "\n"
    return text

def clean_text(text):
    """Clean extracted text."""
    # Remove excessive whitespace but preserve some structure
    text = re.sub(r'[ \t]+', ' ', text)
    text = re.sub(r'\n\s*\n', '\n', text)
    return text.strip()

def extract_year_sections(text):
    """Split text into year sections."""
    year_sections = {}

    # Find all year markers
    pattern = r'(\d{4})\s+(?:JAMB\s+)?USE\s+OF\s+ENGLISH'
    matches = list(re.finditer(pattern, text, re.IGNORECASE))

    for i, match in enumerate(matches):
        year = int(match.group(1))
        start = match.end()

        # Find end of this year's section
        if i + 1 < len(matches):
            end = matches[i + 1].start()
        else:
            end = len(text)

        year_sections[year] = text[start:end]

    return year_sections

def extract_answer_key(text):
    """Extract answer key from text."""
    answer_key = {}

    # Look for ANSWERS section
    answer_patterns = [
        r'ANSWERS?\s*:?\s*((?:\d+\s*[.:\)]\s*[A-D]\s*)+)',
        r'(?:^|\n)ANSWERS?\s*\n((?:\d+\s*[.:\)]\s*[A-D]\s*)+)',
    ]

    for pattern in answer_patterns:
        match = re.search(pattern, text, re.MULTILINE | re.IGNORECASE)
        if match:
            answer_text = match.group(1)
            # Extract all number-letter pairs
            pairs = re.findall(r'(\d+)\s*[.:\)]\s*([A-D])', answer_text, re.IGNORECASE)
            for num, ans in pairs:
                answer_key[int(num)] = ans.upper()
            if answer_key:
                break

    return answer_key

def extract_passages(text):
    """Extract comprehension passages with their associated question ranges."""
    passages = []

    # Look for PASSAGE markers
    passage_pattern = r'PASSAGE\s+([IVX]+|[0-9]+)(.*?)(?=(?:PASSAGE|LEXIS|STRUCTURE|\d+\.\s*According to the passage)|\Z)'
    matches = re.finditer(passage_pattern, text, re.DOTALL | re.IGNORECASE)

    for match in matches:
        passage_id = match.group(1).strip()
        passage_content = match.group(2).strip()

        # Clean up passage text - remove questions that may have been captured
        # Stop at first question number
        question_start = re.search(r'\d+\.\s+(?:According to|What|Which|The|From)', passage_content)
        if question_start:
            passage_content = passage_content[:question_start.start()]

        passages.append({
            'id': passage_id,
            'text': clean_text(passage_content)
        })

    return passages

def extract_questions_from_text(year_text, year):
    """Extract questions using improved pattern matching."""
    questions = []

    # Get answer key
    answer_key = extract_answer_key(year_text)

    # Get passages
    passages = extract_passages(year_text)

    # Pattern to match: number. question A. option B. option C. option D. option
    # More flexible to handle text without clear line breaks
    question_pattern = r'(\d+)\.\s*([^A-D]{10,}?)\s*A\.\s*([^B]{2,100}?)\s*B\.\s*([^C]{2,100}?)\s*C\.\s*([^D]{2,100}?)\s*D\.\s*([^0-9]{2,100}?)(?=\s*\d+\.|ANSWER|PASSAGE|$)'

    matches = re.finditer(question_pattern, year_text, re.DOTALL)

    current_passage = None
    passage_idx = 0

    for match in matches:
        try:
            q_num = int(match.group(1))
            question_text = clean_text(match.group(2))
            option_a = clean_text(match.group(3))
            option_b = clean_text(match.group(4))
            option_c = clean_text(match.group(5))
            option_d = clean_text(match.group(6))

            # Validate that we actually got reasonable options
            if not all([option_a, option_b, option_c, option_d]):
                continue

            # Skip if options are unreasonably long (parsing error)
            if any(len(opt) > 300 for opt in [option_a, option_b, option_c, option_d]):
                continue

            # Skip if question text is too short
            if len(question_text) < 10:
                continue

            # Categorize question
            category = categorize_question(question_text)

            # Associate passage if comprehension question
            passage_text = None
            if category == "comprehension" and passages and passage_idx < len(passages):
                passage_text = passages[passage_idx]['text']

            question_data = {
                "year": year,
                "question_number": q_num,
                "question_text": question_text,
                "options": {
                    "A": option_a,
                    "B": option_b,
                    "C": option_c,
                    "D": option_d
                },
                "correct_answer": answer_key.get(q_num, ""),
                "category": category,
                "passage_text": passage_text
            }

            questions.append(question_data)

        except Exception as e:
            # Skip malformed questions
            continue

    return questions

def categorize_question(question_text):
    """Determine the category of a question."""
    q_lower = question_text.lower()

    # Comprehension
    if any(phrase in q_lower for phrase in [
        'according to the passage', 'according to the writer', 'the passage',
        'the writer', 'the author', 'from the passage', 'in the passage'
    ]):
        return "comprehension"

    # Lexis (vocabulary)
    if any(phrase in q_lower for phrase in [
        'synonym', 'antonym', 'meaning', 'means', 'closest in meaning',
        'best replaced', 'similar to', 'word', 'phrase'
    ]):
        return "lexis"

    # Oral forms (pronunciation/stress)
    if any(word in q_lower for word in [
        'stress', 'pronunciation', 'pronounce', 'syllable', 'sound',
        'vowel', 'consonant', 'rhyme', 'rhymes'
    ]):
        return "oral_forms"

    # Structure (grammar)
    if any(phrase in q_lower for phrase in [
        'complete', 'fill', 'correct', 'choose the option',
        'appropriate', 'sentence', 'grammatically'
    ]):
        return "structure"

    return "general"

def main():
    pdf_path = "resources/jamb_exams/USE_OF_ENGLISH_PART_A.pdf"
    output_path = "resources/jamb_exams/jamb_use_of_english_extracted.json"

    print("=" * 60)
    print("JAMB USE OF ENGLISH QUESTION EXTRACTOR")
    print("=" * 60)

    print("\n[1/4] Extracting text from PDF...")
    text = extract_text_from_pdf(pdf_path)
    print(f"      Extracted {len(text):,} characters")

    print("\n[2/4] Identifying year sections...")
    year_sections = extract_year_sections(text)
    print(f"      Found {len(year_sections)} year(s): {sorted(year_sections.keys())}")

    print("\n[3/4] Parsing questions...")
    all_questions = []
    questions_by_year = {}

    target_years = [2010, 2011, 2012, 2013]

    for year in sorted(year_sections.keys()):
        if year in target_years:
            print(f"      Processing year {year}...")
            year_text = year_sections[year]
            questions = extract_questions_from_text(year_text, year)

            if questions:
                questions_by_year[year] = questions
                all_questions.extend(questions)
                print(f"        ✓ Extracted {len(questions)} questions")
            else:
                print(f"        ⚠ No questions found")

    print(f"\n[4/4] Writing output to JSON...")
    output_data = {
        "source": "JAMB USE OF ENGLISH PART A",
        "description": "Extracted JAMB USE OF ENGLISH questions from years 2010-2013",
        "extraction_date": "2026-02-17",
        "years_included": target_years,
        "total_questions": len(all_questions),
        "questions_by_year": questions_by_year,
        "all_questions": all_questions
    }

    with open(output_path, 'w', encoding='utf-8') as f:
        json.dump(output_data, f, indent=2, ensure_ascii=False)

    print(f"      Saved to: {output_path}")

    print("\n" + "=" * 60)
    print("EXTRACTION SUMMARY")
    print("=" * 60)
    print(f"Total questions extracted: {len(all_questions)}")

    if questions_by_year:
        print("\nBreakdown by year:")
        for year in sorted(questions_by_year.keys()):
            questions = questions_by_year[year]
            print(f"\n  {year}: {len(questions)} questions")

            # Count by category
            categories = {}
            for q in questions:
                cat = q['category']
                categories[cat] = categories.get(cat, 0) + 1

            for cat in sorted(categories.keys()):
                print(f"    • {cat}: {categories[cat]}")
    else:
        print("\n⚠ WARNING: No questions were extracted!")
        print("   The PDF format may require manual review.")

    print("\n" + "=" * 60)

if __name__ == "__main__":
    main()
