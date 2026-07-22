/*
  # Add Historical Use of English Questions - Year 1991 Batch 7

  1. Purpose
    - Add questions from 1991
    - Manually extracted from DOCX compilation
    - 6 questions

  2. Content
    - Topics: General

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The expression, ‘necessary evil’ means that',
    'multiple_choice',
    '["evil is essential in studying the subject discussed", "studying the subject is an unpleasant experience which must be endured", "only those who are evil can understand the subject", "those lacking in quantitative skills see the subject as an evil."]'::jsonb,
    'A',
    'Past question from 1991',
    'medium',
    1991,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When you go to a foreign country to study, you will discover that life there is not a bed of roses.',
    'multiple_choice',
    '["unclear", "prejudiced", "bleak.", "anxieties"]'::jsonb,
    'A',
    'Past question from 1991',
    'medium',
    1991,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'How I wish I … my mother’s advice.',
    'multiple_choice',
    '["have heeded", "heed", "will heed.", "are"]'::jsonb,
    'A',
    'Past question from 1991',
    'medium',
    1991,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When you’ve finished using the telephone, please hang … A.    down        B. up           C. off        D. on.',
    'multiple_choice',
    '["put up appearance", "show up appearance", "keep up appearance.", "cheer"]'::jsonb,
    'A',
    'Past question from 1991',
    'medium',
    1991,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When we got to the president’s house, we were told that he  … two days earlier.',
    'multiple_choice',
    '["left", "had left", "has left.", "hang"]'::jsonb,
    'A',
    'Past question from 1991',
    'medium',
    1991,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When the transformer blew up, Saka threw himself down … his stomach.',
    'multiple_choice',
    '["over", "to", "on.", "to"]'::jsonb,
    'A',
    'Past question from 1991',
    'medium',
    1991,
    'General'
  );
