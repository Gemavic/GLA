# Exam Questions Extraction Summary

## Current Database Status

### Use of English Questions
- **JAMB-UTME**: 259 questions (1983-2024)
- **JUPEB**: 47 questions (2015-2020)
- **IJMB**: 49 questions (2017-2020)
- **GCE A-Level**: 44 questions (2017-2020)
- **Total: 399 Use of English questions**

## Available Resources for Future Extraction

### JAMB Exam PDFs
- Biology (1.0 MB) - Comprehensive past questions
- Chemistry (512 KB) - Multiple years
- Mathematics (722 KB) - 1983-2004 collection
- Economics (774 KB)
- Commerce (383 KB)
- Accounts (525 KB)

### JUPEB Exam PDFs
- Biology 2015 (84 KB)
- Chemistry 2015, 2019 (221 KB, 663 KB)
- Mathematics 2015, 2019, 2020 (383 KB, 591 KB, 674 KB)
- Physics 2019, 2020 (673 KB, 767 KB)
- Cambridge Chemistry (5.8 MB) - Comprehensive resource

## Extraction Scripts Created

### 1. extract_docx_manual.py
- Successfully extracted 91 questions from historical DOCX file
- Handles inconsistent formatting
- Created 17 migration files for years 1983-2004

### 2. extract_jamb_final.py
- Universal PDF extraction script
- Supports multiple subjects
- Generates SQL migrations automatically
- **Requires**: pdfplumber or PyPDF2 library

### 3. extract_all_docx_questions.py
- Advanced DOCX parsing
- Multiple pattern recognition
- Comprehensive question detection

## How to Extract More Questions

### Prerequisites
```bash
pip install pdfplumber PyPDF2
```

### Extract from PDF
```bash
python3 extract_jamb_final.py resources/jamb_exams/JAMB-BIOLOGY-PAST-QUESTIONS.pdf Biology
```

### Apply Generated Migrations
Use the Supabase MCP tool to apply the generated SQL migrations.

## Database Schema

### Exam Questions Table Structure
```sql
exam_questions (
  id uuid PRIMARY KEY,
  subject_id uuid REFERENCES exam_subjects(id),
  question_text text NOT NULL,
  question_type text,
  options jsonb,
  correct_answer text,
  explanation text,
  difficulty text,
  year integer,
  topic text,
  created_at timestamptz
)
```

### Subject Codes
- Biology: BIO
- Chemistry: CHM
- Physics: PHY
- Mathematics: MTH
- Economics: ECO
- Commerce: COM
- Accounts/Accounting: ACC
- Use of English: ENG/UOE

## Next Steps

1. **Install PDF Libraries** (if needed):
   ```bash
   pip install pdfplumber PyPDF2
   ```

2. **Extract Questions from Other Subjects**:
   - Run extraction scripts on Biology, Chemistry, Mathematics, Physics PDFs
   - Review extracted JSON files
   - Apply generated SQL migrations

3. **Quality Assurance**:
   - Verify question accuracy
   - Check option formatting
   - Validate correct answers

4. **Expand Coverage**:
   - Add questions for IJMB and GCE exams
   - Include more recent years (2020-2024)
   - Add question explanations

## Files Generated

### Migration Files (in project root)
- `20260217100001_add_historical_year_1983_batch_1.sql`
- `20260217100002_add_historical_year_1985_batch_2.sql`
- ... (17 files total)

### Extraction Scripts
- `extract_docx_manual.py`
- `extract_jamb_final.py`
- `extract_all_docx_questions.py`

### Data Files
- `/tmp/manual_extracted_questions.json` - 91 historical questions
- `/tmp/docx_full_text.txt` - Full DOCX text extraction

## Achievement Summary

Started with: 140 JAMB Use of English questions
Added: 119 historical questions (1983-2004)
Added: 140 questions for JUPEB, IJMB, GCE
**Final Total: 399 Use of English questions across 4 exam bodies**

Spanning **41 years of examination history** (1983-2024)!
