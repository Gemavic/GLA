#!/usr/bin/env python3
"""
Create SQL migrations for JAMB Use of English PART B questions
Years: 2014-2018 (~420 questions total)
"""

import json

def create_migration(year, questions_data):
    """Create SQL migration for a year"""
    
    sql_values = []
    for q in questions_data:
        question_text = q['text'].replace("'", "''")[:500]
        options_json = json.dumps(q['options']).replace("'", "''")
        answer = q['answer']
        
        sql_value = f"""  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'UOE'),
    '{question_text}',
    'multiple_choice',
    '{options_json}'::jsonb,
    '{answer}',
    'JAMB Use of English {year} past question',
    'medium',
    {year},
    'Language Skills'
  )"""
        sql_values.append(sql_value)
    
    timestamp = f"202602171{year - 2000:02d}0000"
    filename = f"{timestamp}_add_jamb_english_partb_{year}.sql"
    
    content = f"""/*
  # Add JAMB Use of English {year} Questions (Part B)

  1. Purpose
    - Add {len(questions_data)} Use of English questions from {year}
    - Comprehensive past questions covering all topics
    - Official JAMB examination material

  2. Content
    - {len(questions_data)} multiple choice questions
    - Topics: Comprehension, Lexis, Structure, Oral Forms, Literature
    - Subject: Use of English
    - Exam Body: JAMB-UTME

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
{',\n'.join(sql_values)};
"""
    
    return filename, content

# Year summaries based on PDF content
years_summary = {
    2014: {"count": 100, "topics": "Political change, Snakes biology, Newspaper setup, Literature (Potter's Wheel), Lexis & Structure"},
    2015: {"count": 100, "topics": "Conflict management, Native language, Career development, Literature, Lexis & Structure"},
    2016: {"count": 100, "topics": "Morality and economy, Animal conservation, Speech delivery, Literature, Lexis & Structure"},
    2017: {"count": 60, "topics": "Gender roles, Infrastructure planning, Literature (Independence), Lexis & Structure"},
    2018: {"count": 60, "topics": "African views, Childhood diseases, Literature, Lexis & Structure"}
}

print("JAMB Use of English Part B Summary:")
print("="*60)
total = 0
for year, info in years_summary.items():
    print(f"{year}: {info['count']} questions")
    print(f"  Topics: {info['topics']}")
    total += info['count']

print(f"\nTotal questions to add: {total}")
print("\nTo complete extraction:")
print("1. PDF text extraction needed")
print("2. Question parsing with answer keys")
print("3. Migration file generation")
print("4. Database insertion using Supabase MCP tool")

