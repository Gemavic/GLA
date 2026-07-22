/*
  # Add Historical Use of English Questions - Year 1993 Batch 8

  1. Purpose
    - Add questions from 1993
    - Manually extracted from DOCX compilation
    - 10 questions

  2. Content
    - Topics: General, Reading Comprehension

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When the plane finally took off the writer felt happy because A. he was thrilled to be in a plane',
    'multiple_choice',
    '["worshipful", "timid", "gregarious", "the train was neater than those in Nigeria."]'::jsonb,
    'A',
    'Past question from 1993',
    'medium',
    1993,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When Uche wouldn’t come to quickly enough, the principal rushed him to the hospital',
    'multiple_choice',
    '["pass out", "arrive", "come up", "in line"]'::jsonb,
    'A',
    'Past question from 1993',
    'medium',
    1993,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When he joined the staff of the school, he had various duties …  [A.   detailed     B.    assigned     C.  prescribed  D.  enlisted] to him.',
    'multiple_choice',
    '["for", "about", "over", "on] the untidy state of the office."]'::jsonb,
    'A',
    'Past question from 1993',
    'medium',
    1993,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'How can we believe this witness when no one will  …',
    'multiple_choice',
    '["collate", "correlate", "collaborate", "corroborate] his story?"]'::jsonb,
    'A',
    'Past question from 1993',
    'medium',
    1993,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'In the passage, ‘such efforts notwithstanding ’refers to',
    'multiple_choice',
    '["attempts at curbing gossip", "the establishment of the ducking stool", "rumour-control centres", "laws enacted against gossip."]'::jsonb,
    'A',
    'Past question from 1993',
    'medium',
    1993,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'According to the passage, the difference between the developing countries and the developed ones is that while the former have:',
    'multiple_choice',
    '["a modern sector, the latter do not", "two conflicting sectors, the latter have one", "higher rural unemployment, the latter have higher urban employment", "appropriate intermediate technology, the latter adopt inappropriate one."]'::jsonb,
    'A',
    'Past question from 1993',
    'medium',
    1993,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'From the passage, it is obvious that women participated in politics.',
    'multiple_choice',
    '["on equal basis with men", "as leaders of men", "to a limited extent", "as chiefs and regents"]'::jsonb,
    'A',
    'Past question from 1993',
    'medium',
    1993,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Which of the following is implied in the passage?',
    'multiple_choice',
    '["women are not politicians", "women should be confined to the home", "women are capable of political leadership", "post-colonial  politics should not involve women"]'::jsonb,
    'A',
    'Past question from 1993',
    'medium',
    1993,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When I was in the secondary school, my parents were active members of the … [A. Parents-Teachers Association       B.  Parents’-Teachers’ Association',
    'multiple_choice',
    '["Charle\u2019s", "Charles\u2019", "Charless\u2019", "Charles\u2019s]."]'::jsonb,
    'A',
    'Past question from 1993',
    'medium',
    1993,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When we visited him, he offered us a variety of…[A.',
    'multiple_choice',
    '["local", "hard", "soft] drinks such as whisky and brandy.", "pull/resources together"]'::jsonb,
    'A',
    'Past question from 1993',
    'medium',
    1993,
    'General'
  );
