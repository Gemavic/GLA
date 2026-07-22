#!/usr/bin/env python3
"""
Create sample migration for JAMB Part B questions
Shows structure for the full extraction
"""

import json

# Complete answer keys from PDF
ANSWER_KEYS = {
    2014: "C C A D C A A A B B C B A B A C B C A D D D D A D C C C D C A A C D C A B B C A C B A A C A B B B A C B A D D C C B D A C B A D A D A C D A A D D B D D C C A D D D C A C C B D A C D D D A D A A D D B B C A D A C C A C A C A B B C B B A B A C A B B C".split(),
    2015: "D D A D C B A B C A A C A A A B C B A D D A B A A B A B D B A D A B D B A B A B B A A B C C C C D B A C C A C A D B A C B B A B B A D D A C D D C B B D A A A A A B A B A D A C A C C A A A C A A A D C C C C C C C C B B".split(),
    2016: "B A A B D C D D C D C A D A A D A C D B B A B D B C C A A A B A D D A D C A D C D B C D C D B D B C B A C A D C A C D B C B B D C A A B A A B A C A B C C C B D D A A B A A A B A C A B C".split(),
    2017: "A D B A D A A B A D A A C B D D D B B C A D A D D A D B B D B A D C A A C D B B B C B C A A B A C B A C A A D C A A C A".split(),
    2018: "C B B D A A B A B C A A C C C D D C B A C C D C A B C C C A B D A B D C D A A B B B D B C A A B D A C A D B B A A A B A".split()
}

def create_sample_migration(year, sample_size=10):
    """Create a sample migration showing the structure"""

    # Sample questions structure (first 10 from each year for demonstration)
    sample_questions = [
        {
            "num": 1,
            "text": "Question text goes here (from PDF)",
            "options": ["Option A", "Option B", "Option C", "Option D"],
            "topic": "Comprehension"
        }
        # ... more questions
    ]

    answers = ANSWER_KEYS[year][:sample_size]

    sql_values = []
    for i, ans in enumerate(answers, 1):
        sql_values.append(f"""  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'UOE'),
    'JAMB {year} Question {i} - [Text from PDF]',
    'multiple_choice',
    '[\"Option A\", \"Option B\", \"Option C\", \"Option D\"]'::jsonb,
    '{ans}',
    'JAMB {year} Use of English',
    'medium',
    {year},
    'Language Skills'
  )""")

    filename = f"SAMPLE_jamb_partb_{year}.sql"
    content = f"""/*
  # Sample Migration Structure for JAMB {year}

  This shows the format for the {len(answers)} questions
  Replace placeholders with actual content from PDF
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
{',\n'.join(sql_values)};
"""

    with open(filename, 'w') as f:
        f.write(content)

    print(f"✓ Created {filename}")
    return filename

print("JAMB Part B Structure Creator")
print("="*60)
print("\nAnswer Keys Loaded:")
for year, answers in ANSWER_KEYS.items():
    print(f"  {year}: {len(answers)} questions")

print(f"\nTotal: {sum(len(a) for a in ANSWER_KEYS.values())} questions")
print("\nCreating sample migration structure...")

create_sample_migration(2014)
print("\n✓ Sample created - shows structure for full extraction")
print("\nNext steps:")
print("1. Extract question text from PDF")
print("2. Replace placeholders with actual questions")
print("3. Apply migrations to database")
