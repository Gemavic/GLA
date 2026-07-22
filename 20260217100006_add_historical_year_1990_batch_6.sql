/*
  # Add Historical Use of English Questions - Year 1990 Batch 6

  1. Purpose
    - Add questions from 1990
    - Manually extracted from DOCX compilation
    - 5 questions

  2. Content
    - Topics: General, Reading Comprehension, Vocabulary

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The phrase ‘too late’ as used in the passage implies that the woman',
    'multiple_choice',
    '["ought to have started producing children earlier", "goes on producing children when she ought to have stopped", "fails to marry early enough for her to produce children", "had all her children at an advanced age."]'::jsonb,
    'A',
    'Past question from 1990',
    'medium',
    1990,
    'Vocabulary'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'How many solutions to the bookseller’s problems are offered in this passage?',
    'multiple_choice',
    '["Three", "Four", "Five", "Two"]'::jsonb,
    'A',
    'Past question from 1990',
    'medium',
    1990,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'What he received from the visitor was invaluable A. priceless    B. worthless    C. valueless    D. costly.',
    'multiple_choice',
    '["latent", "effective", "abundant.", "selfish"]'::jsonb,
    'A',
    'Past question from 1990',
    'medium',
    1990,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Why do you worry about such … Matters?',
    'multiple_choice',
    '["significant", "non-significant", "unsignificant.", "perceive"]'::jsonb,
    'A',
    'Past question from 1990',
    'medium',
    1990,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When the farmers were found guilty of unlawful assembly and procession, their lawyer… before the sentence was passed.',
    'multiple_choice',
    '["made a plea for mitigation", "made an overture", "made a plea for litigation", "settle for"]'::jsonb,
    'A',
    'Past question from 1990',
    'medium',
    1990,
    'General'
  );
