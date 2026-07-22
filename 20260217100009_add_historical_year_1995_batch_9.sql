/*
  # Add Historical Use of English Questions - Year 1995 Batch 9

  1. Purpose
    - Add questions from 1995
    - Manually extracted from DOCX compilation
    - 3 questions

  2. Content
    - Topics: General, Reading Comprehension

  3. Security
    - Uses existing RLS policies
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'The expression ‘each striving to be recognized as being the most cogent’ means each',
    'multiple_choice',
    '["trying to prove its superiority", "determined to prove that it is the most acceptable", "resolved not to be dislodged", "attempting to show that it is the brightest."]'::jsonb,
    'A',
    'Past question from 1995',
    'medium',
    1995,
    'General'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'According to the passage, international English is',
    'multiple_choice',
    '["a recognized formal standard.", "dialects", "languages", "unconventionality"]'::jsonb,
    'A',
    'Past question from 1995',
    'medium',
    1995,
    'Reading Comprehension'
  ),
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'ENG'),
    'What saved her was that she … [A. had clinged B. clung C. clinged D. clang] to the side of the boas.',
    'multiple_choice',
    '["since", "for", "from", "in] the past three years."]'::jsonb,
    'A',
    'Past question from 1995',
    'medium',
    1995,
    'General'
  );
