/*
  # JAMB Use of English Part B - Migration Template

  This template helps you add questions from the PDF to your database.

  Instructions:
  1. For each question in the PDF, fill in:
     - question_text: The full question text
     - options: JSON array with 4 choices [A, B, C, D]
     - correct_answer: Letter from answer key
     - year: 2014, 2015, 2016, 2017, or 2018
     - topic: Comprehension, Lexis, Structure, Oral Forms, or Literature

  2. Use this format for each question
  3. Process in batches of 25-50 for easier management
*/

-- Example format:
INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME') AND code = 'UOE'),
    'Your question text here from the PDF',
    'multiple_choice',
    '["Option A text", "Option B text", "Option C text", "Option D text"]'::jsonb,
    'C',
    'JAMB 2014 Use of English - Comprehension passage',
    'medium',
    2014,
    'Comprehension'
  );

-- Repeat for each question...

/*
  Answer Keys Reference (from PDF):

  2014 (100 questions):
  1-10:   C C A D C A A A B B
  11-20:  C B A B A C B C A D
  21-30:  D D D A D C C C D C
  31-40:  A A C D C A B B C A
  41-50:  C B A A C A B B B A
  51-60:  C B A D D C C B D A
  61-70:  C A D A A A A D D B
  71-80:  D D C C A D D C A C
  81-90:  C A D C B A D A D B
  91-100: B C A D A C B A B A

  2015 (100 questions):
  1-10:   D D A D C B A B C A
  11-20:  A C A A A B C B A D
  21-30:  D A B A A B A B D B
  31-40:  A D A B D B A B A B
  41-50:  B A A B C C C C D B
  51-60:  A C C A C A D B A C
  61-70:  B B A B B A D A C D
  71-80:  C B B D A A A A B
  81-90:  A B A D A C A C C A
  91-100: A A C A A D C C C C

  2016 (100 questions):
  1-10:   B A A B D C D D C D
  11-20:  C A D A A D A C D B
  21-30:  B A B D B C C A A A
  31-40:  B A D D A D C A D C
  41-50:  D B C D C D B D B C
  51-60:  A D A D B C B C D B
  61-70:  A C B C D B A B A A
  71-80:  B A C A D C A C D B
  81-90:  C B B D C A A B A A
  91-100: B A C A B A A D B C

  2017 (60 questions):
  1-10:   A D B A D A A B A D
  11-20:  A A C B D D D B B C
  21-30:  A D A D D A D B B D
  31-40:  B A D C A A C D B B
  41-50:  B C B C A A B A C B
  51-60:  A C A A D C A A C A

  2018 (60 questions):
  1-10:   C B B D A A B A B C
  11-20:  A A C C C D D C B A
  21-30:  C C D C A B C C C A
  31-40:  B D A B D C D A A B
  41-50:  B B D B C A A B D A
  51-60:  C A D B B A A A B A
*/
