/*
  # Add Historical Use of English Questions - Year 2001 Batch 14

  1. Purpose
    - Add questions from 2001
    - Manually extracted from DOCX compilation
    - 6 questions

  2. Content
    - Topics: General, Reading Comprehension, Vocabulary

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The word those, as used in the passage, refers to',
    'multiple_choice',
    '["indigenous languages", "forms of orthography and phonology", "foreign languages", "patterns of an indigenous language."]'::jsonb,
    'A',
    'Past question from 2001',
    'medium',
    2001,
    'Vocabulary'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'According to the passage, scientific evidence has made it possible',
    'multiple_choice',
    '["to make conjectures about what happens after death", "to know a little about what happens in the world of the dead", "for one to experience the sensation of dying and living again", "for the dead to return and tell their experiences."]'::jsonb,
    'A',
    'Past question from 2001',
    'medium',
    2001,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'From the passage, it is obvious that',
    'multiple_choice',
    '["the motorcar and the lorry came to displace", "the train traffic", "motorcars were mere luxuries which many people", "tried desperately to acquire"]'::jsonb,
    'A',
    'Past question from 2001',
    'medium',
    2001,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When Ajike met her… (A.  strange  B. loving  C. caring D. estranged) husband at the party, she felt like reconciling with him.',
    'multiple_choice',
    '["does not he", "does he", "does he not", "doesn\u2019t he)?"]'::jsonb,
    'A',
    'Past question from 2001',
    'medium',
    2001,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'What a harmless thought he has!',
    'multiple_choice',
    '["perfect", "pernicious", "pertinent", "enthusiasm"]'::jsonb,
    'A',
    'Past question from 2001',
    'medium',
    2001,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'How will they get to Abuja?',
    'multiple_choice',
    '["Did they fly to Jos?", "Did your neighbour fracture his thigh while playing football?", "Did your neighbour break his leg while playing tennis?", "Did your neighbour play football yesterday?"]'::jsonb,
    'A',
    'Past question from 2001',
    'medium',
    2001,
    'General'
  );
