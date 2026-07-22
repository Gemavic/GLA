#!/usr/bin/env python3
import json
import re

def escape_for_jsonb(text):
    """Escape text for use inside JSONB string literals"""
    # Replace backslash first
    text = text.replace('\\', '\\\\')
    # Replace double quotes
    text = text.replace('"', '\\"')
    # Replace newlines, tabs, etc.
    text = text.replace('\n', '\\n')
    text = text.replace('\r', '\\r')
    text = text.replace('\t', '\\t')
    return text

def escape_for_sql(text):
    """Escape text for use in SQL string literals"""
    # Double single quotes for SQL
    return text.replace("'", "''")

# Read all questions
with open('/tmp/cc-agent/63523149/project/resources/luth_exams/all_questions_ultimate.json', 'r', encoding='utf-8') as f:
    questions = json.load(f)

print(f"Total questions loaded: {len(questions)}")

# Split into 5 batches
batch_size = 92
batches = [questions[i:i + batch_size] for i in range(0, len(questions), batch_size)]

for batch_num, batch in enumerate(batches, 1):
    sql_lines = []
    sql_lines.append("DO $$")
    sql_lines.append("DECLARE")
    sql_lines.append("  v_luth_id UUID;")
    sql_lines.append("  v_eng_id UUID;")
    sql_lines.append("  v_math_id UUID;")
    sql_lines.append("  v_phys_id UUID;")
    sql_lines.append("  v_chem_id UUID;")
    sql_lines.append("  v_bio_id UUID;")
    sql_lines.append("BEGIN")
    sql_lines.append("  SELECT id INTO v_luth_id FROM exam_bodies WHERE short_name = 'LUTH' LIMIT 1;")
    sql_lines.append("  SELECT id INTO v_eng_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'English' LIMIT 1;")
    sql_lines.append("  SELECT id INTO v_math_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Mathematics' LIMIT 1;")
    sql_lines.append("  SELECT id INTO v_phys_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Physics' LIMIT 1;")
    sql_lines.append("  SELECT id INTO v_chem_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Chemistry' LIMIT 1;")
    sql_lines.append("  SELECT id INTO v_bio_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Biology' LIMIT 1;")
    sql_lines.append("")
    sql_lines.append("  INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES")

    value_lines = []
    for q in batch:
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
            subj_var = 'v_eng_id'  # default

        # Escape question text for SQL
        question_text = escape_for_sql(q['text'])

        # Build JSONB options array - escape each option for JSONB
        options_list = []
        for opt in q.get('options', []):
            # Escape for JSONB (double quotes and backslashes)
            escaped_opt = escape_for_jsonb(opt)
            options_list.append(f'"{escaped_opt}"')

        # Build JSON string and then escape it for SQL (double single quotes)
        options_json = '[' + ', '.join(options_list) + ']'
        options_json = escape_for_sql(options_json)

        year = q.get('year', 2014)
        topic = escape_for_sql(f"LUTH {year} {q['subject'].upper()}")
        difficulty = 'medium'
        correct_answer = 'A'  # placeholder

        value_line = f"({subj_var}, '{question_text}', 'multiple_choice', '{options_json}'::jsonb, '{correct_answer}', '{difficulty}', '{topic}', {year})"
        value_lines.append(value_line)

    sql_lines.append(',\n'.join(value_lines) + ';')
    sql_lines.append("")
    sql_lines.append(f"  RAISE NOTICE 'Successfully loaded batch {batch_num} with {len(batch)} questions';")
    sql_lines.append("END $$;")

    # Write to file
    filename = f'/tmp/cc-agent/63523149/project/supabase/migrations/20260216_luth_batch_{batch_num}_fixed.sql'
    with open(filename, 'w', encoding='utf-8') as f:
        f.write('\n'.join(sql_lines))

    print(f"Generated batch {batch_num} with {len(batch)} questions")

print("All batches generated successfully!")
