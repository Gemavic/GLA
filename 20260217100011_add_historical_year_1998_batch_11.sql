/*
  # Add Historical Use of English Questions - Year 1998 Batch 11

  1. Purpose
    - Add questions from 1998
    - Manually extracted from DOCX compilation
    - 3 questions

  2. Content
    - Topics: General, Vocabulary

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The expression ‘There is no rate at which people ought to read of course... is used to',
    'multiple_choice',
    '["justify regression in reading", "condemn slow reading habits", "justify a variety of reading speeds", "recommend regression in reading."]'::jsonb,
    'A',
    'Past question from 1998',
    'medium',
    1998,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The word ‘exaggerated’ as used in the passage, means',
    'multiple_choice',
    '["problematic", "falsified", "compounded", "regular"]'::jsonb,
    'A',
    'Past question from 1998',
    'medium',
    1998,
    'Vocabulary'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'What you  will find in the book is a bird’s eye view of the subject.',
    'multiple_choice',
    '["a biased treatment", "a general survey.", "an interesting and successful career", "a career full of ups and downs."]'::jsonb,
    'A',
    'Past question from 1998',
    'medium',
    1998,
    'General'
  );
