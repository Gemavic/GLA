/*
  # Add Historical Use of English Questions - Year 1985 Batch 2

  1. Purpose
    - Add questions from 1985
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
    'Which of the following is NOT implied in the expression: ‘One naira per meal is a privilege in this country?',
    'multiple_choice',
    '["It is rare for anybody to feed satisfactorily with one        naira in any hotel in the country", "Obi cannot afford more than one naira for one meal", "Ordinarily, one naira cannot buy much in the country.", "without an identity card, no one can be allowed to        eat in the Sports Club Cafeteria"]'::jsonb,
    'A',
    'Past question from 1985',
    'medium',
    1985,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The expression ‘Mathematics is the queen of the',
    'multiple_choice',
    '["an analogy", "an irony", "a lie", "nonsense"]'::jsonb,
    'A',
    'Past question from 1985',
    'medium',
    1985,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When you are faced with an examination of this nature endeavour to keep your mind... the job and not be distracted for one moment.',
    'multiple_choice',
    '["in", "for", "on", "to"]'::jsonb,
    'A',
    'Past question from 1985',
    'medium',
    1985,
    'General'
  );
