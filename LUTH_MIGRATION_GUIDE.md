# LUTH Exam Questions Migration Guide

## Complete Migration Summary

A comprehensive Supabase migration has been created to load all 460 LUTH exam questions with proper subject ID mapping and UUID conversion.

## File Details

**Location**: `/tmp/cc-agent/63523149/project/supabase/migrations/load_luth_questions.sql`

**File Size**: ~107 KB
**Total Lines**: 554
**Questions Included**: 460

## Migration Architecture

### Four-Step Process with Common Table Expressions (CTEs)

```
Step 1: exam_body CTE
├─ Retrieves the LUTH exam body UUID from exam_bodies table
│
├─ Step 2: subject_map CTE
├─ Maps numeric IDs (1-5) to actual subject UUIDs
├─ Uses UNION ALL to combine 5 subject mappings:
│  ├─ 1 → English
│  ├─ 2 → Mathematics
│  ├─ 3 → Physics
│  ├─ 4 → Chemistry
│  └─ 5 → Biology (searches ILIKE '%Biology%')
│
├─ Step 3: delete_existing CTE
├─ Cleans up any previously loaded LUTH questions
└─ Only deletes questions for the mapped subjects

└─ Step 4: inserted_questions CTE (Main Insert)
  └─ Inserts all 460 questions with:
     ├─ Correct exam_body_id (from exam_body CTE)
     ├─ Mapped subject_id (from subject_map CTE)
     ├─ Question text
     ├─ Multiple choice options (JSON array format)
     ├─ Correct answer (A-E)
     ├─ Topic/category
     ├─ Year (2014-2022)
     └─ Auto-generated timestamps
```

## Subject ID Mapping

The migration automatically converts from numeric IDs to database UUIDs:

| Numeric ID | Subject Name | Data | How It Works |
|------------|--------------|------|--------------|
| 1 | English | Questions from LUTH 2014-2022 | Direct name match |
| 2 | Mathematics | Questions from LUTH 2014-2022 | Direct name match |
| 3 | Physics | Questions from LUTH 2014-2022 | Direct name match |
| 4 | Chemistry | Questions from LUTH 2014-2022 | Direct name match |
| 5 | Biology | Questions from LUTH 2014-2022 | ILIKE '%Biology%' |

## Data Attributes

Each question record contains:

```
{
  exam_body_id:    UUID (LUTH body ID),
  subject_id:      UUID (mapped from numeric 1-5),
  question_text:   String (full question text),
  question_type:   'multiple_choice' (constant),
  options:         JSON Array of 5 options,
  correct_answer:  Single letter A-E,
  difficulty:      'medium' (constant),
  topic:           String (e.g., 'LUTH 2014 CHEMISTRY'),
  year:            Integer (2014-2022),
  created_at:      TIMESTAMP (NOW()),
  updated_at:      TIMESTAMP (NOW())
}
```

## How to Apply the Migration

### Option 1: Using Supabase CLI (Recommended)

```bash
# Navigate to your project directory
cd /tmp/cc-agent/63523149/project

# Run the migration
supabase migration up
```

### Option 2: Supabase Dashboard (SQL Editor)

1. Open Supabase Dashboard for your project
2. Go to SQL Editor
3. Create a new query
4. Paste the entire content of `load_luth_questions.sql`
5. Click "Run" or press Cmd+Enter / Ctrl+Enter

### Option 3: psql Command Line

```bash
psql -h your-db-host -U your-username -d your-database-name < load_luth_questions.sql
```

## Verification After Migration

The migration provides a result set showing:

```
 total_questions_inserted | last_inserted_at
-------------------------+-----------------------
                     460 | 2024-02-15 10:30:45.123
```

You can also verify manually:

```sql
-- Check total questions inserted
SELECT COUNT(*) FROM exam_questions 
WHERE topic LIKE 'LUTH%';

-- Check by subject
SELECT es.name, COUNT(eq.id) as question_count
FROM exam_questions eq
JOIN exam_subjects es ON eq.subject_id = es.id
WHERE eq.topic LIKE 'LUTH%'
GROUP BY es.name
ORDER BY es.name;

-- Check by year
SELECT year, COUNT(*) as question_count
FROM exam_questions
WHERE topic LIKE 'LUTH%'
GROUP BY year
ORDER BY year;
```

## Expected Results

After running the migration, you should see:

**Total Questions**: 460

**Distribution by Subject**:
- English: ~90-100 questions
- Mathematics: ~90-100 questions
- Physics: ~90-100 questions
- Chemistry: ~90-100 questions
- Biology: ~90-100 questions

**Year Range**: 2014-2022

## Important Notes

### Prerequisites
- LUTH exam body must exist in `exam_bodies` table
  ```sql
  SELECT id FROM exam_bodies WHERE name = 'LUTH';
  ```

- All 5 subjects must exist in `exam_subjects` table
  ```sql
  SELECT name, id FROM exam_subjects 
  WHERE exam_body_id = '...' 
  ORDER BY name;
  ```

### Safety Features
1. **Atomic Transaction**: Wrapped in BEGIN/COMMIT
2. **Safe Deletion**: Only removes existing LUTH questions
3. **UUID Mapping**: Automatic conversion from numeric to UUID
4. **Data Integrity**: All 460 questions with complete data

### Rollback
If needed to rollback:

```sql
-- Delete all inserted LUTH questions
DELETE FROM exam_questions 
WHERE topic LIKE 'LUTH%';
```

## Question Data Format

### Options (JSON Array)
```json
["Option A", "Option B", "Option C", "Option D", "Option E"]
```

### Correct Answer
```
'A' | 'B' | 'C' | 'D' | 'E'
```

### Topic Format
```
LUTH 2014 BIOLOGY
LUTH 2014 CHEMISTRY
LUTH 2014 ENGLISH
LUTH 2014 MATHEMATICS
LUTH 2014 PHYSICS
LUTH 2015 ...
... up to LUTH 2022
```

## Performance Considerations

- Migration duration: ~5-15 seconds depending on database size
- No downtime required
- Safe to run on production Supabase database
- Indexes will be automatically updated

## Troubleshooting

### Error: "exam bodies" table not found
```
Solution: Ensure LUTH exam body exists:
INSERT INTO exam_bodies (name, description) 
VALUES ('LUTH', 'Lagos University Teaching Hospital');
```

### Error: Subject not found
```
Solution: Verify all subjects exist:
SELECT es.name FROM exam_subjects es
WHERE es.exam_body_id = (SELECT id FROM exam_bodies WHERE name = 'LUTH');
```

### Error: Column not found
```
Solution: Ensure all columns exist in exam_questions table
COLUMN LIST:
- exam_body_id (UUID)
- subject_id (UUID)
- question_text (TEXT)
- question_type (VARCHAR)
- options (JSONB)
- correct_answer (VARCHAR)
- difficulty (VARCHAR)
- topic (TEXT)
- year (INTEGER)
- created_at (TIMESTAMP)
- updated_at (TIMESTAMP)
```

## Next Steps

After migration:

1. **Verify Data**: Run verification queries above
2. **Test in Exam Simulator**: Ensure questions appear correctly
3. **Check Display**: Verify options render properly
4. **Test Filtering**: Test year and subject filters work
5. **Performance Test**: Check query performance with 460 additional questions

## Support

For issues or questions, check:
- Supabase logs (Dashboard > Logs)
- Database function logs
- SQL query execution errors

