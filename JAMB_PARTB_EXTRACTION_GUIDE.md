# JAMB Use of English Part B - Extraction Guide

## Document Overview

**Source:** USE_OF_ENGLISH_PART_B.pdf
**Content:** JAMB past questions from 2014-2018
**Total Questions:** 420 questions with answer keys

## Breakdown by Year

### 2014 (100 questions)
- **Passages:** Political/social change, Snake characteristics, Newspaper operations
- **Literature:** The Potter's Wheel by Chukwuemeka Ike (Questions 21-30)
- **Lexis & Structure:** Questions 36-85
- **Oral Forms:** Questions 86-100
- **Answer Key Provided:** Yes (Page 8)

### 2015 (100 questions)
- **Passages:** Conflict management, Native language importance, Career development
- **Literature:** The Last Day at Forcados High School (Questions 21-36)
- **Lexis & Structure:** Questions 36-85
- **Oral Forms:** Questions 86-100
- **Answer Key Provided:** Yes (Page 15)

### 2016 (100 questions)
- **Passages:** Morality/economy, Animal conservation, Speech delivery
- **Literature:** The First Days at Forcados High School (Questions 21-35)
- **Lexis & Structure:** Questions 36-85
- **Oral Forms:** Questions 86-100
- **Answer Key Provided:** Yes (Page 23)

### 2017 (60 questions)
- **Passages:** Gender roles in society, Infrastructure development
- **Literature:** Independence by S.I. Manyika (Questions 16-25)
- **Lexis & Structure:** Questions 26-50
- **Oral Forms:** Questions 51-60
- **Answer Key Provided:** Yes (Page 27)

### 2018 (60 questions)
- **Passages:** African perspectives, Childhood diseases
- **Idioms & Expressions:** Questions 23-33
- **Lexis & Structure:** Questions 34-55
- **Oral Forms:** Questions 56-60
- **Answer Key Provided:** Yes (Page 32)

## Question Categories

### Comprehension Passages
- Reading comprehension with 5-10 questions each
- Topics: Social issues, science, economics, culture

### Literature Questions
- Based on prescribed texts
- Character analysis, plot understanding, thematic questions

### Lexis & Structure
- Synonyms, antonyms, idioms, phrasal verbs
- Grammar: tenses, voice, concord, prepositions
- Sentence completion

### Oral Forms
- Word stress patterns
- Vowel and consonant sounds
- Rhyming words
- Emphatic stress

## Database Structure Needed

```sql
-- Each question needs:
- subject_id: Use of English (UOE)
- question_text: The actual question
- question_type: 'multiple_choice'
- options: JSON array of 4 options (A, B, C, D)
- correct_answer: Letter (A, B, C, or D)
- explanation: Source and context
- difficulty: 'medium'
- year: 2014-2018
- topic: Category (Comprehension, Lexis, Structure, Oral)
```

## Extraction Approach

### Option 1: Manual Extraction
1. Process each year separately
2. Create 5 migration files (one per year)
3. Group questions by type for better organization

### Option 2: Automated with Python
```python
# Requires: pdfplumber or PyPDF2
# Parse PDF → Extract questions → Generate SQL
```

### Option 3: Batch Processing
Create smaller batches (25-50 questions) for easier verification

## Sample Migration Format

```sql
/*
  # Add JAMB Use of English 2014 Questions (Part B)

  - 100 comprehensive questions
  - All topics covered with answer keys
  - Years: 2014
*/

INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  ((SELECT id FROM exam_subjects WHERE code = 'UOE'),
   'Which question paper type is given?',
   'multiple_choice',
   '["Type F", "Type E", "Type L", "Type S"]'::jsonb,
   'C',
   'JAMB 2014 Use of English',
   'medium',
   2014,
   'Comprehension'),
  -- ... more questions
```

## Quality Assurance

### Verification Checklist
- [ ] All 420 questions extracted
- [ ] Answer keys match (cross-reference with provided answers)
- [ ] Options formatted correctly (A, B, C, D)
- [ ] No duplicate questions
- [ ] Proper year attribution
- [ ] Topic categorization accurate

## Next Steps

1. **Extract Questions:** Process PDF text systematically
2. **Parse Structure:** Identify question numbers, options, and answers
3. **Create Migrations:** Generate SQL files per year
4. **Validate:** Cross-check with answer keys
5. **Insert:** Use Supabase MCP tool to apply migrations

## Current Status

- **Database:** Ready to receive questions
- **Subject Setup:** Use of English subject exists
- **Previous Additions:** 399 questions already in database
- **Target:** Add 420 more questions from Part B

## Timeline Estimate

- **Manual Processing:** 6-8 hours for all years
- **With Automation:** 2-3 hours (script development + verification)
- **Recommended:** Start with 2014, validate, then proceed

## Notes

- All questions have verified answer keys in the PDF
- Literature questions reference specific texts
- Some questions require understanding of Nigerian context
- Oral forms section tests pronunciation and stress patterns
