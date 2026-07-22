/*
  # Sample Migration Structure for JAMB 2014

  This shows the format for the 10 questions
  Replace placeholders with actual content from PDF
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'UOE'),
    'JAMB 2014 Question 1 - [Text from PDF]',
    'multiple_choice',
    '["Option A", "Option B", "Option C", "Option D"]'::jsonb,
    'C',
    'JAMB 2014 Use of English',
    'medium',
    2014,
    'Language Skills'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'UOE'),
    'JAMB 2014 Question 2 - [Text from PDF]',
    'multiple_choice',
    '["Option A", "Option B", "Option C", "Option D"]'::jsonb,
    'C',
    'JAMB 2014 Use of English',
    'medium',
    2014,
    'Language Skills'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'UOE'),
    'JAMB 2014 Question 3 - [Text from PDF]',
    'multiple_choice',
    '["Option A", "Option B", "Option C", "Option D"]'::jsonb,
    'A',
    'JAMB 2014 Use of English',
    'medium',
    2014,
    'Language Skills'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'UOE'),
    'JAMB 2014 Question 4 - [Text from PDF]',
    'multiple_choice',
    '["Option A", "Option B", "Option C", "Option D"]'::jsonb,
    'D',
    'JAMB 2014 Use of English',
    'medium',
    2014,
    'Language Skills'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'UOE'),
    'JAMB 2014 Question 5 - [Text from PDF]',
    'multiple_choice',
    '["Option A", "Option B", "Option C", "Option D"]'::jsonb,
    'C',
    'JAMB 2014 Use of English',
    'medium',
    2014,
    'Language Skills'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'UOE'),
    'JAMB 2014 Question 6 - [Text from PDF]',
    'multiple_choice',
    '["Option A", "Option B", "Option C", "Option D"]'::jsonb,
    'A',
    'JAMB 2014 Use of English',
    'medium',
    2014,
    'Language Skills'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'UOE'),
    'JAMB 2014 Question 7 - [Text from PDF]',
    'multiple_choice',
    '["Option A", "Option B", "Option C", "Option D"]'::jsonb,
    'A',
    'JAMB 2014 Use of English',
    'medium',
    2014,
    'Language Skills'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'UOE'),
    'JAMB 2014 Question 8 - [Text from PDF]',
    'multiple_choice',
    '["Option A", "Option B", "Option C", "Option D"]'::jsonb,
    'A',
    'JAMB 2014 Use of English',
    'medium',
    2014,
    'Language Skills'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'UOE'),
    'JAMB 2014 Question 9 - [Text from PDF]',
    'multiple_choice',
    '["Option A", "Option B", "Option C", "Option D"]'::jsonb,
    'B',
    'JAMB 2014 Use of English',
    'medium',
    2014,
    'Language Skills'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'UOE'),
    'JAMB 2014 Question 10 - [Text from PDF]',
    'multiple_choice',
    '["Option A", "Option B", "Option C", "Option D"]'::jsonb,
    'B',
    'JAMB 2014 Use of English',
    'medium',
    2014,
    'Language Skills'
  );
