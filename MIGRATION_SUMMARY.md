# LUTH Exam Questions Migration

## Overview
A comprehensive Supabase migration that loads all **460 LUTH exam questions** with proper subject ID mapping.

## File Location
`/supabase/migrations/load_luth_questions.sql`

## What This Migration Does

### 1. Retrieves the LUTH Exam Body ID
- Queries the `exam_bodies` table to get the UUID for "LUTH"

### 2. Maps Numeric Subject IDs to UUIDs
The migration creates a subject mapping from numeric IDs to actual database UUIDs:

```
1 → English
2 → Mathematics  
3 → Physics
4 → Chemistry
5 → Biology/General Knowledge
```

This is done using a UNION ALL query that matches subject names in the exam_subjects table.

### 3. Deletes Existing LUTH Questions
Removes any previously loaded LUTH questions to ensure a clean state:
```sql
DELETE FROM exam_questions
WHERE subject_id IN (SELECT uuid FROM subject_map)
```

### 4. Inserts All 460 Questions
The migration includes all 460 question records from the LUTH exam database with:
- Subject ID mapped from numeric (1-5) to UUID
- Question text
- Multiple choice options (stored as JSON array)
- Correct answer (A-E)
- Topic/category information
- Year of exam
- Timestamps (created_at, updated_at)

## Question Distribution

The 460 questions are distributed across:
- **English**: Questions from LUTH 2014-2022
- **Mathematics**: Questions from LUTH 2014-2022
- **Physics**: Questions from LUTH 2014-2022
- **Chemistry**: Questions from LUTH 2014-2022
- **Biology/General Knowledge**: Questions from LUTH 2014-2022

## How to Apply the Migration

### Using Supabase CLI:
```bash
supabase migration up
```

Or manually in Supabase Studio:
1. Go to SQL Editor
2. Copy the entire content of `load_luth_questions.sql`
3. Execute the query

## Migration Structure

```sql
BEGIN;

-- CTE 1: Get exam body ID for LUTH
WITH exam_body AS (...)

-- CTE 2: Map numeric IDs to UUIDs
subject_map AS (...)

-- CTE 3: Delete existing questions
delete_existing AS (...)

-- CTE 4: Insert all 460 questions
inserted_questions AS (...)

-- Final SELECT to confirm insertion
SELECT COUNT(*) as total_questions_inserted ...

COMMIT;
```

## Data Verification

The migration will output:
- `total_questions_inserted`: Should be 460
- `last_inserted_at`: Timestamp of insertion

## Key Features

1. **Atomic Transaction**: Entire migration wrapped in BEGIN/COMMIT
2. **Safe Deletion**: Only deletes questions for mapped subjects
3. **Proper UUID Mapping**: Converts numeric IDs to database UUIDs
4. **Complete Data**: All 460 questions with proper formatting
5. **Timestamps**: Automatic creation/update timestamps

## Requirements

- LUTH exam body must exist in `exam_bodies` table
- All five subjects (English, Mathematics, Physics, Chemistry, Biology) must exist in `exam_subjects` table
- `exam_questions` table must have columns for all inserted fields

## Notes

- Questions are stored with `question_type` = 'multiple_choice'
- All questions have `difficulty` = 'medium'
- Options are stored as JSON arrays
- Correct answers are single characters (A-E)
- Years range from 2014-2022
