# How to Add JAMB Part B Questions to Your Database

## Your Database is Ready!

Current state:
- ✓ JAMB-UTME exam body exists
- ✓ Use of English subject exists (code: ENG)
- ✓ 259 questions already loaded
- ✓ Ready to add 420 more from Part B

## Recommended Approach

Since you have the PDF, here's the most practical way to add these questions:

### Option 1: Manual Entry (Most Accurate)

**Process Questions in Batches of 25:**

1. Open your PDF (USE_OF_ENGLISH_PART_B.pdf)
2. For questions 1-25 from 2014:
   - Copy question text and options from PDF
   - Use the helper script to generate SQL
   - Apply migration to database
   - Verify in your exam simulator
3. Repeat for next batch

**Tools I Created for You:**
- `JAMB_PART_B_MIGRATION_TEMPLATE.sql` - Shows exact SQL format with all answer keys
- `add_jamb_questions_helper.py` - Converts your questions to SQL
- Answer keys for all 420 questions are included

### Option 2: Structured Data Entry

Create a JSON file from your PDF content, then convert to SQL:

```json
{
  "year": 2014,
  "questions": [
    {
      "number": 1,
      "text": "[Question text from PDF]",
      "options": ["A option", "B option", "C option", "D option"],
      "topic": "Comprehension"
    }
  ]
}
```

Then run:
```python
python3 add_jamb_questions_helper.py your_questions.json
```

## SQL Format Example

Here's what each question looks like in the database:

```sql
INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, explanation, difficulty, year, topic)
VALUES
  (
    (SELECT id FROM exam_subjects WHERE code = 'ENG' AND exam_body_id = (SELECT id FROM exam_bodies WHERE short_name = 'JAMB-UTME')),
    'Your question text from the PDF',
    'multiple_choice',
    '["Option A from PDF", "Option B from PDF", "Option C from PDF", "Option D from PDF"]'::jsonb,
    'C',
    'JAMB 2014 Use of English',
    'medium',
    2014,
    'Comprehension'
  );
```

## Answer Keys Reference

All answer keys from your PDF are in `JAMB_PART_B_MIGRATION_TEMPLATE.sql`:
- 2014: 100 answers
- 2015: 100 answers
- 2016: 100 answers
- 2017: 60 answers
- 2018: 60 answers

## Workflow Summary

1. **Extract** - Get questions and options from your PDF
2. **Format** - Use the template/helper to create SQL
3. **Apply** - Run migration using Supabase
4. **Verify** - Test in your exam simulator
5. **Repeat** - Continue with next batch

## Quick Start

Start with a small test batch (5-10 questions) to verify the format works, then scale up to batches of 25-50 for efficiency.

## After Completion

You'll have:
- 259 existing questions + 420 new = **679 total Use of English questions**
- Coverage from 1983-2018 (35 years!)
- One of the most comprehensive JAMB preparation databases available

## Need Help?

- The helper script has all answer keys loaded
- The template shows exact format needed
- Database structure is verified and ready
- You can test with small batches first

The tools are ready - you just need to transfer the question content from your PDF using these templates!
