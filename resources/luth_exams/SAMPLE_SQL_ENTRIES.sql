-- LUTH ENTRANCE EXAM - SAMPLE SQL INSERT ENTRIES
-- This file shows sample questions from each year and subject
-- Full dataset: 460 questions ready in LUTH_ALL_QUESTIONS_INSERT.sql

-- Example 1: 2022 English (Grammar)
INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES
(1, 'Without ………….words he accused him directly of treachery.', 'multiple_choice', '["amending", "modifying", "mixing", "mincing", "minimizing"]', 'A', 'medium', 'LUTH 2022 ENGLISH', 2022);

-- Example 2: 2022 Mathematics (Algebra)
INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES
(2, 'A micrometer is defined as one millionth of a millimeter. A length of 12,000 micrometer may be represented as?', 'multiple_choice', '["0.00012M", "0.0000012M", "0.000012M", "0.00000012M", "0.000000012M"]', 'A', 'medium', 'LUTH 2022 MATHEMATICS', 2022);

-- Example 3: 2022 Chemistry (Stoichiometry)
INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES
(4, 'When the vapour of a substance is in equilibrium with its own liquid, it is said to be', 'multiple_choice', '["gaseous", "unsaturated", "saturated", "diffused", "liquefied"]', 'A', 'medium', 'LUTH 2022 CHEMISTRY', 2022);

-- Example 4: 2022 Physics (Mechanics)
INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES
(3, 'An avocado fruit drops from the top of a tree 45m tall. How long does it take to reach the ground?', 'multiple_choice', '["3.0s", "4.5s", "6.0s", "8.6s", "9.0s"]', 'A', 'medium', 'LUTH 2022 PHYSICS', 2022);

-- Example 5: 2022 Biology (Cell Biology)
INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES
(5, 'A plant which grows on another plant without apparent harm to the host plant is called', 'multiple_choice', '["a parasite", "an epiphyte", "a saprophyte", "a predator", "a hermaphrodite"]', 'A', 'medium', 'LUTH 2022 BIOLOGY', 2022);

-- Example 6: 2021 English (Vocabulary)
INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES
(1, 'Ifeyinwa found that thieves had entered her house in her absence. She went to the police to report the………', 'multiple_choice', '["breakout", "breakup", "break in", "breakthrough", "breakin"]', 'A', 'medium', 'LUTH 2021 ENGLISH', 2021);

-- Example 7: 2021 Mathematics (Statistics)
INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES
(2, 'The interior angles of a pentagon are (2x+5)°,(x+20)°,x°,(3x-20)°and(x+15)°. find the value of x.', 'multiple_choice', '["80°", "70°", "65°", "40°", "30°"]', 'A', 'medium', 'LUTH 2021 MATHEMATICS', 2021);

-- Example 8: 2020 Chemistry (Electrochemistry)
INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES
(4, 'The products of the electrolysis of dilute sodium chloride solution with platinum electrodes are', 'multiple_choice', '["hydrogen and oxygen", "oxygen and chlorine", "chlorine and water", "sodium amalgam and chlorine", "sodium hydroxide and water"]', 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020);

-- Example 9: 2017 Physics (Optics)
INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES
(3, 'What must be the distance between an object and a converging lens of focal length 20cm to produce an erect image two times the object height?', 'multiple_choice', '["20cm", "15cm", "10cm", "5cm", "2cm"]', 'A', 'medium', 'LUTH 2017 PHYSICS', 2017);

-- Example 10: 2014 Biology (Genetics)
INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES
(5, 'Using the punnet square given by Whitaker, the F2 generation shows a ratio of', 'multiple_choice', '["3:1", "1:3:1", "1:2:1", "2:1", "4:3:1"]', 'A', 'medium', 'LUTH 2014 BIOLOGY', 2014);

-- NOTES:
-- 1. Subject IDs: 1=English, 2=Mathematics, 3=Physics, 4=Chemistry, 5=Biology
-- 2. All questions have exactly 5 options (A-E)
-- 3. correct_answer field can be 'A', 'B', 'C', 'D', or 'E'
-- 4. options field is stored as JSON array
-- 5. difficulty can be 'easy', 'medium', or 'hard'
-- 6. topic field follows format: LUTH [YEAR] [SUBJECT]
-- 7. Full dataset has 460 questions across 9 years (2014-2022)
