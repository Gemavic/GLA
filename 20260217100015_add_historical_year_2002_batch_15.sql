/*
  # Add Historical Use of English Questions - Year 2002 Batch 15

  1. Purpose
    - Add questions from 2002
    - Manually extracted from DOCX compilation
    - 3 questions

  2. Content
    - Topics: General, Reading Comprehension

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The expression we may well be asked as used in the passage means',
    'multiple_choice',
    '["it is quite likely that we will be asked", "we cannot escape being asked", "the listener is always justified to ask questions", "it is inconceivable that we will be asked."]'::jsonb,
    'A',
    'Past question from 2002',
    'medium',
    2002,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Whenever we have ….(A together a good long talk B. a long good talk together  C. together a long good talk D. a good  long talk together), we feel better.',
    'multiple_choice',
    '["on", "by", "to", "with) all the terms of the contract."]'::jsonb,
    'A',
    'Past question from 2002',
    'medium',
    2002,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Who ran to the palace?',
    'multiple_choice',
    '["Did he travel only 20 kilometres after his car stopped?", "Did he travel exactly 20 kilometres before his car stopped?", "Did he travel more than 20 kilometres before his car  stopped?", "Did you walk only 20 kilometres before the vehicle stopped?"]'::jsonb,
    'A',
    'Past question from 2002',
    'medium',
    2002,
    'General'
  );
