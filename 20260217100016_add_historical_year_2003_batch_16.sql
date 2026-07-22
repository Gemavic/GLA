/*
  # Add Historical Use of English Questions - Year 2003 Batch 16

  1. Purpose
    - Add questions from 2003
    - Manually extracted from DOCX compilation
    - 3 questions

  2. Content
    - Topics: General

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The expression when man evolved a conscience means when',
    'multiple_choice',
    '["man developed an awareness of right and wrong", "man\u2019s intellect improved tremendously", "man acquired new habits", "man became a critical creature."]'::jsonb,
    'A',
    'Past question from 2003',
    'medium',
    2003,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When he goes to London, he will see the Queen.',
    'multiple_choice',
    '["devastated", "courteous", "astute", "passionate"]'::jsonb,
    'A',
    'Past question from 2003',
    'medium',
    2003,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'How is the new editor… (A. pushing B. going C. getting D. moving) on with his work?',
    'multiple_choice',
    '["do they?", "they are?", "aren\u2019t they?", "are they?)"]'::jsonb,
    'A',
    'Past question from 2003',
    'medium',
    2003,
    'General'
  );
