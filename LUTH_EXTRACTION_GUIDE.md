# LUTH Exam Questions Extraction Guide

## Overview
This document provides a comprehensive guide for extracting exam questions from the LUTH (Lagos University Teaching Hospital) past questions PDF located at `resources/luth_exams/LUTH_COMPLETE_PAST_QUESTIONS.pdf`.

## PDF Status
- **File**: LUTH_COMPLETE_PAST_QUESTIONS.pdf
- **Size**: 512 KB
- **Format**: PDF 1.4 (image-based/scanned document)
- **Status**: Requires OCR for text extraction

## Database Schema

### Exam Bodies Table
The LUTH exam body has already been created with:
- **Name**: Lagos University Teaching Hospital
- **Short Name**: LUTH
- **Level**: intermediate
- **Description**: Professional examinations for healthcare, nursing, and technical programs

### Exam Subjects to Create
For LUTH, the following subjects should be created:

```
1. Nursing & Healthcare Sciences (NHS)
   - Duration: 90 minutes
   - Total Questions: 50
   - Pass Mark: 50%

2. Anatomy (ANAT)
   - Duration: 90 minutes
   - Total Questions: 40
   - Pass Mark: 50%

3. Physiology (PHYS)
   - Duration: 90 minutes
   - Total Questions: 40
   - Pass Mark: 50%

4. Pathology (PATH)
   - Duration: 90 minutes
   - Total Questions: 45
   - Pass Mark: 50%

5. Pharmacology (PHAR)
   - Duration: 90 minutes
   - Total Questions: 40
   - Pass Mark: 50%

6. Medical Biochemistry (BIO)
   - Duration: 90 minutes
   - Total Questions: 45
   - Pass Mark: 50%
```

## Question Structure

Each question should follow this JSON format:

```json
{
  "subject_name": "Nursing & Healthcare Sciences",
  "question_text": "What is the primary role of hemoglobin in the blood?",
  "question_type": "multiple_choice",
  "options": [
    "Oxygen transport and carbon dioxide transport",
    "Antibody production",
    "Blood clotting",
    "Nutrient storage"
  ],
  "correct_answer": "Oxygen transport and carbon dioxide transport",
  "explanation": "Hemoglobin is the protein in red blood cells...",
  "difficulty": "easy",
  "topic": "Hematology",
  "year": 2024,
  "marks": 1
}
```

## SQL Template Structure

The questions will be inserted using a PL/pgSQL block:

```sql
DO $$
DECLARE
  luth_body_id UUID;
  nursing_id UUID;
  anatomy_id UUID;
  -- ... other subject IDs
BEGIN
  -- Get LUTH exam body ID
  SELECT id INTO luth_body_id FROM exam_bodies WHERE short_name = 'LUTH' LIMIT 1;

  -- Create subjects
  INSERT INTO exam_subjects (exam_body_id, name, code, duration_minutes, total_questions, pass_mark, is_active)
  VALUES
    (luth_body_id, 'Nursing & Healthcare Sciences', 'NHS', 90, 50, 50, true),
    -- ... other subjects
  ON CONFLICT DO NOTHING;

  -- Retrieve subject IDs
  SELECT id INTO nursing_id FROM exam_subjects WHERE name = 'Nursing & Healthcare Sciences' LIMIT 1;
  -- ... get other IDs

  -- Insert questions
  INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic, marks)
  VALUES
    (nursing_id, 'Question text...', 'multiple_choice', '["Option1", "Option2", "Option3", "Option4"]', 'Correct Answer', 'Explanation...', 'easy', 2024, 'Topic', 1),
    -- ... more questions
END $$;
```

## Extraction Steps

### Step 1: Convert PDF to Text
Since the PDF is image-based, use OCR tools:

```bash
# Option 1: Using Tesseract OCR
tesseract LUTH_COMPLETE_PAST_QUESTIONS.pdf extracted_text

# Option 2: Using Google Cloud Vision API
# Upload PDF and extract text using the Vision API

# Option 3: Using online OCR service
# Visit https://ocr.space/ and upload the PDF
```

### Step 2: Parse Extracted Text
Look for patterns:
- Question numbering (1., 2., 3., etc. or A., B., C., etc.)
- Multiple choice options (typically A), B), C), D) or similar)
- Subject headings/sections
- Year indicators

### Step 3: Organize Questions
Create a structured JSON file with all questions organized by subject:

```json
{
  "subjects": {
    "Nursing & Healthcare Sciences": [...questions...],
    "Anatomy": [...questions...],
    "Physiology": [...questions...],
    "Pathology": [...questions...],
    "Pharmacology": [...questions...],
    "Medical Biochemistry": [...questions...]
  },
  "total_questions": 0,
  "extraction_date": "2026-02-15"
}
```

### Step 4: Generate SQL Migration
Once you have the JSON data, convert it to SQL INSERT statements:

1. Create a migration file: `supabase/migrations/20260215_add_luth_exam_questions.sql`
2. Use the SQL template structure from section above
3. Replace sample data with actual extracted questions

### Step 5: Apply Migration
```bash
# Apply the migration to your Supabase database
supabase db push
```

## Difficulty Classification

When extracting questions, classify difficulty as:

- **Easy**:
  - Basic recall or definition questions
  - Straightforward facts
  - Simple one-step problems
  - Examples: "What is the primary role of X?", "Which hormone regulates Y?"

- **Medium**:
  - Questions requiring understanding and application
  - Multiple-step reasoning
  - Comparison or contrast questions
  - Examples: "Which of the following best describes...", "How does X relate to Y?"

- **Hard**:
  - Complex analysis or integration of concepts
  - Multi-step calculations
  - Critical thinking required
  - Examples: "Calculate...", "Explain the relationship between...", "Which pathological process..."

## Topic Organization

Organize questions by standard medical topics:

### Nursing & Healthcare Sciences
- Hematology
- Immunology
- Vital Signs
- Renal System
- Cardiovascular Care

### Anatomy
- Skeletal System
- Muscular System
- Nervous System
- Respiratory System
- Cardiac Anatomy
- Organ Systems

### Physiology
- Blood Chemistry
- Cardiovascular Physiology
- Respiratory Physiology
- Renal Physiology
- Endocrine Physiology
- Gastrointestinal Physiology

### Pathology
- Hematopathology
- Cardiovascular Pathology
- Oncology
- Endocrine Pathology
- Infectious Disease Pathology

### Pharmacology
- Cardiovascular Pharmacology
- Antimicrobial Pharmacology
- Pharmacokinetics
- Clinical Pharmacology
- Drug Interactions

### Medical Biochemistry
- Nutrition
- Cellular Metabolism
- Enzyme Chemistry
- Clinical Biochemistry
- Molecular Biology

## Sample Questions (Template)

See `luth_exam_extraction_template.json` for template structure with sample questions.

## Tools and Resources

### OCR Tools
1. **Tesseract OCR** (Open source)
   - Free and powerful
   - Command-line tool
   - Works on Linux/Mac/Windows

2. **Google Cloud Vision API**
   - High accuracy
   - Cloud-based
   - Requires API key

3. **Online Services**
   - OCR.space (https://ocr.space/)
   - i2OCR (https://i2ocr.com/)
   - ILovePDF (https://www.ilovepdf.com/extract-pdf)

### Text Processing
- Python with pandas for organizing extracted text
- Regular expressions for parsing questions and options
- JSON libraries for structured output

## Validation Checklist

Before applying the migration:

- [ ] All questions have subject_name that matches expected subject
- [ ] All questions have 4 options (for multiple choice)
- [ ] correct_answer is one of the provided options
- [ ] difficulty is one of: easy, medium, hard
- [ ] year is a valid year (2020-2024 for recent papers)
- [ ] marks is between 1-3
- [ ] explanation is provided for all questions
- [ ] No duplicate questions detected
- [ ] Total question count matches PDF

## Integration with Application

Once migrated, questions will be available in the exam simulator:

1. **Student Interface**
   - Students can select LUTH as exam body
   - Choose subject
   - Start practice exam
   - Get instant feedback with explanations

2. **Progress Tracking**
   - Exam attempts are logged
   - Score percentage calculated
   - Performance analytics available

3. **Admin Features**
   - View question bank
   - Add/edit questions (future)
   - Monitor usage statistics

## Next Steps

1. Extract text from LUTH PDF using OCR
2. Parse and organize questions into JSON format
3. Validate all questions against the schema
4. Create migration file using the template
5. Test migration in development environment
6. Apply to production database

## Contact & Support

For questions about the extraction process or schema, refer to:
- Existing migrations in `supabase/migrations/`
- TUTOR_PLATFORM_GUIDE.md for system overview
- Database schema in exam_simulator_schema.sql
