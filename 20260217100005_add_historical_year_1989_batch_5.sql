/*
  # Add Historical Use of English Questions - Year 1989 Batch 5

  1. Purpose
    - Add questions from 1989
    - Manually extracted from DOCX compilation
    - 5 questions

  2. Content
    - Topics: General, Reading Comprehension

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'How would you describe Shola’s father?',
    'multiple_choice',
    '["A greedy boatman", "An energetic but good-for-nothing man", "A loving father who wants to safeguard the", "interest of his daughter"]'::jsonb,
    'A',
    'Past question from 1989',
    'medium',
    1989,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Which of the following is true of the stranger in the passage?',
    'multiple_choice',
    '["He was a fine gentleman in need of help", "He was too proud to reciprocate Shola\u2019s love.", "cleverness", "stupidity"]'::jsonb,
    'A',
    'Past question from 1989',
    'medium',
    1989,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'What embarrasses me is the stealthy way in which the new servant goes about his duties in this house A.  indolent      B.  furtive    C.   boisterous    D.  agile',
    'multiple_choice',
    '["infuriated", "thoughtful", "hostile", "kindness"]'::jsonb,
    'A',
    'Past question from 1989',
    'medium',
    1989,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When I met Amadi yesterday it was the first time I … him for six months.',
    'multiple_choice',
    '["saw", "have seen", "have been seeing.", "determined"]'::jsonb,
    'A',
    'Past question from 1989',
    'medium',
    1989,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When the driver lost control of his vehicle, the pedestrians began to run for …',
    'multiple_choice',
    '["their dear life", "dear lives", "dear life.", "elites"]'::jsonb,
    'A',
    'Past question from 1989',
    'medium',
    1989,
    'General'
  );
