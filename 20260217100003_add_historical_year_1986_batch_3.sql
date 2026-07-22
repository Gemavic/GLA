/*
  # Add Historical Use of English Questions - Year 1986 Batch 3

  1. Purpose
    - Add questions from 1986
    - Manually extracted from DOCX compilation
    - 8 questions

  2. Content
    - Topics: General, Reading Comprehension, Vocabulary

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'According to the passage, Ludo is A. more a game of skill than of chance',
    'multiple_choice',
    '["more a game of luck that of skill", "equally a game of chance and skill", "a game entirely of luck.", "apply similar skill to similar figures"]'::jsonb,
    'A',
    'Past question from 1986',
    'medium',
    1986,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Which of the following phrases in the passage does NOT express the artificial character of museums?',
    'multiple_choice',
    '["For transmitting", "Put into", "Devised by.", "always ready to enter the mind"]'::jsonb,
    'A',
    'Past question from 1986',
    'medium',
    1986,
    'Vocabulary'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'What it!  You could be followed said the robber.',
    'multiple_choice',
    '["Be sober", "Be vigilant", "Look out.", "suspicious marks"]'::jsonb,
    'A',
    'Past question from 1986',
    'medium',
    1986,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When he had arranged the furniture, he… the picture on the wall.',
    'multiple_choice',
    '["hung", "hang", "hunged.", "borrow"]'::jsonb,
    'A',
    'Past question from 1986',
    'medium',
    1986,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'According to the passage, the people of Umuaro and Okperi',
    'multiple_choice',
    '["are only acquaintances", "are no friends", "can never be enemies.", "piercing through your ears."]'::jsonb,
    'A',
    'Past question from 1986',
    'medium',
    1986,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'According to the passage, the torch probably developed from a',
    'multiple_choice',
    '["twig", "lamp", "fibre.", "source of warmth"]'::jsonb,
    'A',
    'Past question from 1986',
    'medium',
    1986,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'How many stages of development did the writer mention while discussing the art of record keeping?',
    'multiple_choice',
    '["Three", "Four", "Five", "do not always know who did what and when."]'::jsonb,
    'A',
    'Past question from 1986',
    'medium',
    1986,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'From the passage, we gather that writing is almost',
    'multiple_choice',
    '["upset", "penniless", "borrowing", "in no need."]'::jsonb,
    'A',
    'Past question from 1986',
    'medium',
    1986,
    'Reading Comprehension'
  );
