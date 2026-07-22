/*
  # Add Historical Use of English Questions - Year 2000 Batch 13

  1. Purpose
    - Add questions from 2000
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
    'The expression, ‘not in memory but in expectation’, as used in the passage, implies',
    'multiple_choice',
    '["future, not present", "past, not present", "hopelessness, not hopefulness.", "act with considerable confidence and trust."]'::jsonb,
    'A',
    'Past question from 2000',
    'medium',
    2000,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When I visited James I only gave him a congratulatory card on account of his promotion.',
    'multiple_choice',
    '["All I gave James when I visited him was a        congratulatory card.", "All I did when I visited James was given a        congratulatory card.", "They work independently.", "They cannot part company"]'::jsonb,
    'A',
    'Past question from 2000',
    'medium',
    2000,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When the driver applied the brakes, they acted up',
    'multiple_choice',
    '["responded well", "were sluggish", "jammed", "dismissed"]'::jsonb,
    'A',
    'Past question from 2000',
    'medium',
    2000,
    'General'
  );
