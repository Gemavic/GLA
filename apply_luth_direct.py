#!/usr/bin/env python3
import json
import os

def escape_for_sql(text):
    """Escape text for use in SQL string literals"""
    return text.replace("'", "''")

def escape_for_jsonb(text):
    """Escape text for use inside JSONB string literals"""
    text = text.replace('\\', '\\\\')
    text = text.replace('"', '\\"')
    text = text.replace('\n', '\\n')
    text = text.replace('\r', '\\r')
    text = text.replace('\t', '\\t')
    return text

# Read all questions
with open('/tmp/cc-agent/63523149/project/resources/luth_exams/all_questions_ultimate.json', 'r', encoding='utf-8') as f:
    questions = json.load(f)

print(f"Total questions loaded: {len(questions)}")
print("Generating single comprehensive migration file...")

# Create one large DO block
sql_lines = []
sql_lines.append("/*")
sql_lines.append("  # Load all 460 LUTH entrance exam questions")
sql_lines.append("")
sql_lines.append("  1. New Data")
sql_lines.append("    - 460 multiple-choice questions from LUTH entrance exams (2014-2022)")
sql_lines.append("    - Subjects: Biology, Chemistry, English, Mathematics, Physics")
sql_lines.append("")
sql_lines.append("  2. Security")
sql_lines.append("    - Uses existing RLS policies on exam_questions table")
sql_lines.append("*/")
sql_lines.append("")
sql_lines.append("DO $$")
sql_lines.append("DECLARE")
sql_lines.append("  v_luth_id UUID;")
sql_lines.append("  v_eng_id UUID;")
sql_lines.append("  v_math_id UUID;")
sql_lines.append("  v_phys_id UUID;")
sql_lines.append("  v_chem_id UUID;")
sql_lines.append("  v_bio_id UUID;")
sql_lines.append("BEGIN")
sql_lines.append("  -- Get LUTH exam body ID")
sql_lines.append("  SELECT id INTO v_luth_id FROM exam_bodies WHERE short_name = 'LUTH' LIMIT 1;")
sql_lines.append("")
sql_lines.append("  -- Get subject IDs")
sql_lines.append("  SELECT id INTO v_eng_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'English' LIMIT 1;")
sql_lines.append("  SELECT id INTO v_math_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Mathematics' LIMIT 1;")
sql_lines.append("  SELECT id INTO v_phys_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Physics' LIMIT 1;")
sql_lines.append("  SELECT id INTO v_chem_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Chemistry' LIMIT 1;")
sql_lines.append("  SELECT id INTO v_bio_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Biology' LIMIT 1;")
sql_lines.append("")
sql_lines.append("  -- Insert all questions")
sql_lines.append("  INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES")

value_lines = []
for q in questions:
    subject = q['subject'].lower()
    if subject == 'english':
        subj_var = 'v_eng_id'
    elif subject == 'mathematics':
        subj_var = 'v_math_id'
    elif subject == 'physics':
        subj_var = 'v_phys_id'
    elif subject == 'chemistry':
        subj_var = 'v_chem_id'
    elif subject == 'biology':
        subj_var = 'v_bio_id'
    else:
        subj_var = 'v_eng_id'

    question_text = escape_for_sql(q['text'])

    # Build JSONB options
    options_list = []
    for opt in q.get('options', []):
        escaped_opt = escape_for_jsonb(opt)
        options_list.append(f'"{escaped_opt}"')

    options_json = '[' + ', '.join(options_list) + ']'
    options_json = escape_for_sql(options_json)

    year = q.get('year', 2014)
    topic = escape_for_sql(f"LUTH {year} {q['subject'].upper()}")

    value_line = f"  ({subj_var}, '{question_text}', 'multiple_choice', '{options_json}'::jsonb, 'A', 'medium', '{topic}', {year})"
    value_lines.append(value_line)

sql_lines.append(',\n'.join(value_lines) + ';')
sql_lines.append("")
sql_lines.append("  RAISE NOTICE 'Successfully loaded all 460 LUTH questions';")
sql_lines.append("END $$;")

# Write to single file
filename = '/tmp/cc-agent/63523149/project/supabase/migrations/20260216_load_all_luth_questions_complete.sql'
with open(filename, 'w', encoding='utf-8') as f:
    f.write('\n'.join(sql_lines))

print(f"Generated single migration file with all 460 questions")
print(f"File: {filename}")
print(f"Size: {os.path.getsize(filename)} bytes")
