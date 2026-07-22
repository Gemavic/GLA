# LUTH Exam Questions Extraction and Integration

## Overview

This directory contains tools and documentation for extracting exam questions from the LUTH (Lagos University Teaching Hospital) past examination papers PDF and integrating them into the exam simulator database.

## Files Included

1. **LUTH_EXTRACTION_GUIDE.md** - Comprehensive guide on extraction process, schema, and validation
2. **luth_exam_extraction_template.json** - JSON template showing expected question structure
3. **extract_luth_questions.py** - Python script to parse and convert questions between formats
4. **resources/luth_exams/LUTH_COMPLETE_PAST_QUESTIONS.pdf** - Source PDF file

## Quick Start

### Step 1: Extract Text from PDF

The PDF is image-based (scanned document), so you need to use OCR:

#### Option A: Using Online OCR Service (Easiest)
1. Go to https://ocr.space/
2. Upload `resources/luth_exams/LUTH_COMPLETE_PAST_QUESTIONS.pdf`
3. Download the extracted text file
4. Save as `extracted_text.txt`

#### Option B: Using Tesseract OCR (Linux/Mac)
```bash
# Install Tesseract
sudo apt-get install tesseract-ocr  # Ubuntu/Debian
brew install tesseract              # macOS

# Extract text
tesseract resources/luth_exams/LUTH_COMPLETE_PAST_QUESTIONS.pdf extracted_text
```

#### Option C: Using Google Cloud Vision
```bash
pip install google-cloud-vision
python3 extract_pdf_vision.py resources/luth_exams/LUTH_COMPLETE_PAST_QUESTIONS.pdf
```

### Step 2: Parse and Organize Questions

Once you have the extracted text, use the Python script:

```bash
# Parse text file and export to JSON
python3 extract_luth_questions.py --input extracted_text.txt --output luth_questions.json

# Or parse from CSV if you have manually formatted data
python3 extract_luth_questions.py --input questions.csv --output luth_questions.json

# Export to different formats
python3 extract_luth_questions.py --input luth_questions.json --output luth_questions.csv
python3 extract_luth_questions.py --input luth_questions.json --output luth_questions.sql
```

### Step 3: Review and Validate Questions

Check the output JSON file:
```bash
cat luth_questions.json | jq '.metadata'
cat luth_questions.json | jq '.questions_by_subject | keys'
```

Verify:
- All questions have valid subject names
- Each question has exactly 4 options
- Correct answer is in the options list
- Difficulty is one of: easy, medium, hard
- Year is reasonable (2020-2024)
- Explanations are provided

### Step 4: Create SQL Migration

Once validated, generate the SQL migration:

```bash
python3 extract_luth_questions.py --input luth_questions.json --output luth_migration.sql
```

### Step 5: Apply Migration

Create a proper migration file in `supabase/migrations/`:

```bash
cp luth_migration.sql supabase/migrations/20260215_add_luth_exam_questions.sql

# Push to database
supabase db push
```

## Question Format Details

### Subject Names (Must Match Exactly)
- `Nursing & Healthcare Sciences`
- `Anatomy`
- `Physiology`
- `Pathology`
- `Pharmacology`
- `Medical Biochemistry`

### Question Type Values
- `multiple_choice` - Multiple choice questions (4 options)
- `true_false` - True/False questions (optional)

### Difficulty Levels
- `easy` - Basic recall, simple definitions
- `medium` - Understanding and application required
- `hard` - Analysis, integration, or calculations

### Required Fields
```json
{
  "subject_name": "string (required)",
  "question_text": "string (required)",
  "question_type": "string (default: multiple_choice)",
  "options": ["option1", "option2", "option3", "option4"],
  "correct_answer": "string (must be in options)",
  "explanation": "string (recommended)",
  "difficulty": "easy|medium|hard (default: medium)",
  "topic": "string (recommended)",
  "year": "integer (default: 2024)",
  "marks": "integer 1-3 (default: 1)"
}
```

## Python Script Usage

### Basic Usage
```python
from extract_luth_questions import LUTHQuestionExtractor

extractor = LUTHQuestionExtractor()

# Parse different file formats
extractor.parse_text_file("extracted_text.txt")
extractor.parse_csv_file("questions.csv")
extractor.parse_json_file("questions.json")

# Export to different formats
extractor.export_to_json("output.json")
extractor.export_to_csv("output.csv")
extractor.export_to_sql("output.sql")

# Print summary
extractor.print_summary()
```

### Command Line
```bash
# Auto-detect input format, export to JSON
python3 extract_luth_questions.py --input data.txt --output output.json

# Explicit input format
python3 extract_luth_questions.py --mode csv --input data.csv --output output.json

# Export to SQL
python3 extract_luth_questions.py --input questions.json --output questions.sql
```

## CSV Format (for Manual Entry)

If entering questions manually, use this CSV format:

```csv
subject_name,question_text,question_type,options,correct_answer,explanation,difficulty,topic,year,marks
Nursing & Healthcare Sciences,"What is the primary role of hemoglobin?",multiple_choice,"[""Oxygen transport"",""Clotting"",""Storage"",""Defense""]","Oxygen transport","Hemoglobin carries oxygen from lungs to tissues.",easy,Hematology,2024,1
Anatomy,"How many bones in adult skeleton?",multiple_choice,"[""186"",""206"",""226"",""246""]","206","Adult skeleton has 206 bones.",easy,Skeletal System,2024,1
```

## Expected Output Structure

### JSON Output
```json
{
  "metadata": {
    "exam_body": "LUTH",
    "total_questions": 250,
    "extraction_date": "2026-02-15T10:30:00",
    "by_subject": {
      "Nursing & Healthcare Sciences": 50,
      "Anatomy": 40,
      "Physiology": 40,
      "Pathology": 45,
      "Pharmacology": 40,
      "Medical Biochemistry": 35
    }
  },
  "questions_by_subject": {
    "Nursing & Healthcare Sciences": [...],
    "Anatomy": [...],
    ...
  },
  "all_questions": [...]
}
```

## Integration with Database

### Table: exam_questions

Fields populated from extraction:
- `subject_id` - Maps to subject_name
- `question_text` - Full question text
- `question_type` - multiple_choice or true_false
- `options` - JSONB array of options
- `correct_answer` - The correct option
- `explanation` - Answer explanation
- `difficulty` - easy, medium, or hard
- `year` - Exam year
- `topic` - Topic within subject
- `marks` - Question point value

### Table: exam_subjects

Created automatically with:
- `exam_body_id` - LUTH body ID
- `name` - Subject name
- `code` - 3-4 letter code
- `duration_minutes` - 90 minutes
- `total_questions` - Count from extraction
- `pass_mark` - 50%
- `is_active` - true

## Tips for Accurate Extraction

### When Using OCR
1. Ensure PDF quality is good (high resolution)
2. Convert PDF to images first if needed
3. Verify OCR output for common errors:
   - "O" confused with "0" (zero)
   - "l" (lowercase L) confused with "1" (one)
   - Poor spacing between words
4. Manual correction may be needed

### When Parsing Text
1. Identify consistent question number pattern
2. Look for standard option indicators (A), B), C), D) or 1., 2., 3., 4.)
3. Extract correct answer from answer key if provided
4. Group related questions by subject/topic

### Quality Checks
- No duplicate questions
- Consistent option format
- All options complete and distinct
- Correct answer is clear and unambiguous
- Explanations are accurate and helpful

## Troubleshooting

### OCR Issues
- **Poor text quality**: Try increasing PDF resolution before OCR
- **Mixed languages**: Ensure OCR is set to English
- **Special characters**: Manually correct Unicode issues

### Parsing Issues
- **Questions not detected**: Check question number pattern in text
- **Missing options**: Verify all 4 options are present in source
- **Subject detection wrong**: Manually correct subject_name in CSV

### Database Issues
- **Migration fails**: Check exam_body_id exists for LUTH
- **Duplicate subjects**: Use ON CONFLICT DO NOTHING
- **Foreign key errors**: Ensure all subject IDs are valid

## Performance Tips

1. **Large PDF files**: Split into sections, process separately
2. **Manual entry**: Use spreadsheet (Excel/Google Sheets) then export to CSV
3. **Validation**: Use Python script to validate before database insert
4. **Testing**: Apply migration to test database first

## Next Steps After Integration

Once questions are in the database:

1. **Update Application UI**
   - Add LUTH to exam body selector
   - Display LUTH subjects in practice mode

2. **Enable Features**
   - Practice exams with LUTH questions
   - Performance tracking by subject
   - Progress reports for students

3. **Monitor Usage**
   - Track which subjects are used most
   - Identify difficult questions
   - Collect student feedback

## Support & Maintenance

### Adding More Questions
1. Extract additional LUTH papers using same process
2. Merge JSON files
3. Remove duplicates
4. Create new migration

### Updating Questions
```sql
UPDATE exam_questions
SET explanation = '...'
WHERE id = '...' AND subject_id IN (
  SELECT id FROM exam_subjects
  WHERE name = 'Nursing & Healthcare Sciences'
  AND exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'LUTH')
);
```

### Deleting Questions
```sql
DELETE FROM exam_questions
WHERE subject_id IN (
  SELECT id FROM exam_subjects
  WHERE exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'LUTH')
);
```

## Document Version

- **Created**: 2026-02-15
- **Last Updated**: 2026-02-15
- **Version**: 1.0

## References

- LUTH_EXTRACTION_GUIDE.md - Detailed extraction process
- luth_exam_extraction_template.json - Question structure template
- Database schema: supabase/migrations/20260214225103_create_exam_simulator_schema.sql
- Existing exam data: supabase/migrations/20260215*.sql
