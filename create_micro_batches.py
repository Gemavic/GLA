#!/usr/bin/env python3
import json

def escape_for_sql(text):
    return text.replace("'", "''")

def escape_for_jsonb(text):
    text = text.replace('\\', '\\\\')
    text = text.replace('"', '\\"')
    text = text.replace('\n', '\\n')
    text = text.replace('\r', '\\r')
    text = text.replace('\t', '\\t')
    return text

# Read all questions
with open('/tmp/cc-agent/63523149/project/resources/luth_exams/all_questions_ultimate.json', 'r', encoding='utf-8') as f:
    questions = json.load(f)

print(f"Total questions: {len(questions)}")

# Create micro-batches of 20 questions
batch_size = 20
num_batches = (len(questions) + batch_size - 1) // batch_size

print(f"Creating {num_batches} micro-batches of up to {batch_size} questions each...")

for batch_idx in range(num_batches):
    start_idx = batch_idx * batch_size
    end_idx = min(start_idx + batch_size, len(questions))
    batch = questions[start_idx:end_idx]

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
            subj_var = 'v_eng_id'

        question_text = escape_for_sql(q['text'])

        options_list = []
        for opt in q.get('options', []):
            escaped_opt = escape_for_jsonb(opt)
            options_list.append(f'"{escaped_opt}"')

        options_json = '[' + ', '.join(options_list) + ']'
        options_json = escape_for_sql(options_json)

        year = q.get('year', 2014)
        topic = escape_for_sql(f"LUTH {year} {q['subject'].upper()}")

        value_line = f"({subj_var}, '{question_text}', 'multiple_choice', '{options_json}'::jsonb, 'A', 'medium', '{topic}', {year})"
        value_lines.append(value_line)

    sql_lines.append(',\n'.join(value_lines) + ';')
    sql_lines.append("")
    sql_lines.append(f"  RAISE NOTICE 'Loaded micro-batch {batch_idx + 1}/{num_batches} with {len(batch)} questions (total so far: {end_idx})';")
    sql_lines.append("END $$;")

    filename = f'/tmp/cc-agent/63523149/project/supabase/migrations/20260216_luth_micro_batch_{batch_idx + 1:03d}.sql'
    with open(filename, 'w', encoding='utf-8') as f:
        f.write('\n'.join(sql_lines))

print(f"Generated {num_batches} micro-batch files successfully!")
