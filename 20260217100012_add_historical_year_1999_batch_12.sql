/*
  # Add Historical Use of English Questions - Year 1999 Batch 12

  1. Purpose
    - Add questions from 1999
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
    'The expression, standard of living in developed countries  will plummet, means',
    'multiple_choice',
    '["purchasing power will decline sharply in rich       nations", "people in developed nations will experience boom.", "lignite, butane and charcoal", "wood, coal and oil."]'::jsonb,
    'A',
    'Past question from 1999',
    'medium',
    1999,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'From the passage, it is obvious that',
    'multiple_choice',
    '["there is a hierarchy of rights", "all men possess the right to equal political affiliations", "there is deprivation in the society", "the negro in America are champions of equality."]'::jsonb,
    'A',
    'Past question from 1999',
    'medium',
    1999,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The expression ‘work their way out of their situation’ means.',
    'multiple_choice',
    '["walk from one village to another", "migrate from village to city", "work their way out of their village", "change their circumstances."]'::jsonb,
    'A',
    'Past question from 1999',
    'medium',
    1999,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When he found himself in a difficult situation, he tried to double-talk his way through.',
    'multiple_choice',
    '["power", "force", "skill", "a fun-loving"]'::jsonb,
    'A',
    'Past question from 1999',
    'medium',
    1999,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Why hasn’t the accused been tried yet?',
    'multiple_choice',
    '["Is the electricity in your compound supplied by a         generator?", "touch", "bought", "march"]'::jsonb,
    'A',
    'Past question from 1999',
    'medium',
    1999,
    'General'
  );
