/*
  # Add Historical Use of English Questions - Year 2004 Batch 17

  1. Purpose
    - Add questions from 2004
    - Manually extracted from DOCX compilation
    - 4 questions

  2. Content
    - Topics: General, Vocabulary

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The phrase near neighbour, as used in the passage, shows',
    'multiple_choice',
    '["moonlight generally shares many characteristics", "with \u2018earth light\u2019", "the earth is nearer to the moon than to the sun", "the earth actually shares boundaries with the moon."]'::jsonb,
    'A',
    'Past question from 2004',
    'medium',
    2004,
    'Vocabulary'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The expression either quest refers to the origin of',
    'multiple_choice',
    '["The Magical Powers of the Moon", "Facts about the Moon", "The Lunar Cycle", "Moon-Gazing."]'::jsonb,
    'A',
    'Past question from 2004',
    'medium',
    2004,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The expression when this excuse failed him suggests that the',
    'multiple_choice',
    '["lamb was prepared for the charges levelled against him", "wolf was uncertain of the charges levelled againstthe lamb", "wolf only made up the charges levelled against the lamb", "lamb was more intelligent than the wolf."]'::jsonb,
    'A',
    'Past question from 2004',
    'medium',
    2004,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The expression angry tone and terrible aspect refers to the wolf’s',
    'multiple_choice',
    '["towering size and thunderous voice", "harsh voice and menacing posture", "sonorous voice and overbearing attitude", "loud voice and fretting movement."]'::jsonb,
    'A',
    'Past question from 2004',
    'medium',
    2004,
    'General'
  );
