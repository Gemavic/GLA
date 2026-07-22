/*
  # Add Historical Use of English Questions - Year 1997 Batch 10

  1. Purpose
    - Add questions from 1997
    - Manually extracted from DOCX compilation
    - 4 questions

  2. Content
    - Topics: General, Reading Comprehension

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The expression, ‘blurred his memory’ means',
    'multiple_choice',
    '["erased his memory", "damaged his brain", "distorted his thoughts.", "discovered that she was a thief"]'::jsonb,
    'A',
    'Past question from 1997',
    'medium',
    1997,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The expression, ‘justice-impelled’ in the passage refers to the desire of the crowd to',
    'multiple_choice',
    '["see that there was fair play.", "a good person", "overzealous", "domineering."]'::jsonb,
    'A',
    'Past question from 1997',
    'medium',
    1997,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'When the soldiers saw that resistance was…[A. inadequate B. inefficient C. futile D. successful] they stopped fighting.',
    'multiple_choice',
    '["brochures", "prospectuses", "tickets", "handouts] carefully before you decide where to go on holiday."]'::jsonb,
    'A',
    'Past question from 1997',
    'medium',
    1997,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'Where … buses … [A. does these/go B. do this/goes',
    'multiple_choice',
    '["do these/go", "does these/ goes]?", "are a resource", "is a resource"]'::jsonb,
    'A',
    'Past question from 1997',
    'medium',
    1997,
    'General'
  );
