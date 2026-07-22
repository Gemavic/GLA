/*
  # Add Historical Use of English Questions - Year 1988 Batch 4

  1. Purpose
    - Add questions from 1988
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
    'In the passage, the darkness of ignorance refers to the',
    'multiple_choice',
    '["state of the writer before he found the notice board", "ignorance of illiterates", "ignorance of those who have not been to university", "fact that he was a freshman."]'::jsonb,
    'A',
    'Past question from 1988',
    'medium',
    1988,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'According to the passage the writers predicament was caused by',
    'multiple_choice',
    '["the writer himself", "those who displayed the notices and perhaps the writer", "the nature of the notice board and where it was placed", "those who displayed the notices."]'::jsonb,
    'A',
    'Past question from 1988',
    'medium',
    1988,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The expression ‘his language often betrays him into dullness, coldness, or worst of all, rudeness’ means that',
    'multiple_choice',
    '["his English language lets him down and he becomesdull, cold and rude", "the way he uses the language gives one the i mpression  that he is dull, cold or rude", "he betrays his bad manners by using English badly", "his dullness, coldness or rudeness betrays his bad manners in language use."]'::jsonb,
    'A',
    'Past question from 1988',
    'medium',
    1988,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Which of the following groups of items may be found for sale in the market?',
    'multiple_choice',
    '["Country cloth, copper trinkets and eggs.", "ineffective", "innocent", "unreliable."]'::jsonb,
    'A',
    'Past question from 1988',
    'medium',
    1988,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When I have an appointment with someone,  I hate … waiting',
    'multiple_choice',
    '["for being kept", "being kept", "in being kept.", "for worrying"]'::jsonb,
    'A',
    'Past question from 1988',
    'medium',
    1988,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'What bothered me  about the lecture was the speaker … too many irrelevant words.',
    'multiple_choice',
    '["sighted", "sited", "cited.", "undisciplined"]'::jsonb,
    'A',
    'Past question from 1988',
    'medium',
    1988,
    'Vocabulary'
  );
