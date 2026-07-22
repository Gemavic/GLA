/*
  # Add Historical Use of English Questions - Year 1983 Batch 1

  1. Purpose
    - Add questions from 1983
    - Manually extracted from DOCX compilation
    - 14 questions

  2. Content
    - Topics: General, Reading Comprehension, Vocabulary

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'An eye to aesthetics in this passage means',
    'multiple_choice',
    '["beneficial psychological effects", "regard for health", "consideration for beauty", "a cluster  of buildings."]'::jsonb,
    'A',
    'Past question from 1983',
    'medium',
    1983,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Which of these is NOT among the reasons given by the author for enumerating the examples of the current development?',
    'multiple_choice',
    '["to show that we are capable of executing approved        projects.", "to convince the Government that we can be trusted       with task.", "the inconvenience currently being experienced will       go on indefinitely.", "we are fully aware of the inconveniences being caused       but we do not want you to complain."]'::jsonb,
    'A',
    'Past question from 1983',
    'medium',
    1983,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'What the author is trying to put across in this passage is that',
    'multiple_choice',
    '["work is more desirable than crime", "reforming", "agonizing", "destructive"]'::jsonb,
    'A',
    'Past question from 1983',
    'medium',
    1983,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Combat malnutrition means',
    'multiple_choice',
    '["struggle against the easing of the wrong type of food", "fight ill health caused by over-feeding", "wipe out ignorance", "fight to wipe out ill health caused by lack of food"]'::jsonb,
    'A',
    'Past question from 1983',
    'medium',
    1983,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Which of the following was NOT  a quality of Zacharia’s character?',
    'multiple_choice',
    '["Lack of respect for others", "Humility", "Arrogance", "Insubordination"]'::jsonb,
    'A',
    'Past question from 1983',
    'medium',
    1983,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'From the passage we can conclude that the young girls',
    'multiple_choice',
    '["religious", "modern", "easily led", "indifferent"]'::jsonb,
    'A',
    'Past question from 1983',
    'medium',
    1983,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When kerosene was poured on the fire, the effect 100. It was interesting to observe the likeness between was instantaneous.the pupil and his teacher.',
    'multiple_choice',
    '["momentary", "momentous", "amazing", "similarity"]'::jsonb,
    'A',
    'Past question from 1983',
    'medium',
    1983,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When he got home he made himself a cup of coffee and wondered… perhaps she was one of those naturally friendly people who smile at everybody. He was listening to the radio when the telephone rang… it was only Umaru. Nine o’clock, then 9;30 and no telephone call from the girl. Feeling miserable he went to bed early.',
    'multiple_choice',
    '["staring at the girl", "pretending to read", "looking through a magazine", "reading a newspaper."]'::jsonb,
    'A',
    'Past question from 1983',
    'medium',
    1983,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'According to the passage, quartz is used A.   only in a few devices B. in a lot of devices',
    'multiple_choice',
    '["in wrist watches", "for jewellery", "for steel cylinders.", "superior."]'::jsonb,
    'A',
    'Past question from 1983',
    'medium',
    1983,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Why did the fish land in the field?',
    'multiple_choice',
    '["it was a flying fish", "it was looking for food", "Alan pulled too hard.", "it fell off the hook."]'::jsonb,
    'A',
    'Past question from 1983',
    'medium',
    1983,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Where was Alan looking for his fish? He was looking for the fish',
    'multiple_choice',
    '["down in the river", "in front of the gate", "in his basket", "among the picnickers."]'::jsonb,
    'A',
    'Past question from 1983',
    'medium',
    1983,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Choose the meaning which best fits the underlined phrase from the passage. Closely guarded secret A. Carefully hidden from the knowledge of others',
    'multiple_choice',
    '["Scarcely known", "Unknown.", "called off", "broken off"]'::jsonb,
    'A',
    'Past question from 1983',
    'medium',
    1983,
    'Vocabulary'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'What do you want me to do now? I’m…. withdrawing and keeping quiet.',
    'multiple_choice',
    '["with", "up", "off", "on."]'::jsonb,
    'A',
    'Past question from 1983',
    'medium',
    1983,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Wherever the leader went people struggled to catch a… of him. A. look      B. view     C. glimpse    D. portrait    E. picture.',
    'multiple_choice',
    '["to buy/to sell", "buying/to sell", "buy/to sell", "to buy/selling."]'::jsonb,
    'A',
    'Past question from 1983',
    'medium',
    1983,
    'General'
  );
