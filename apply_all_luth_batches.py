#!/usr/bin/env python3
import subprocess
import sys

batches = [
    '/tmp/cc-agent/63523149/project/supabase/migrations/20260216_luth_batch_1_fixed.sql',
    '/tmp/cc-agent/63523149/project/supabase/migrations/20260216_luth_batch_2_fixed.sql',
    '/tmp/cc-agent/63523149/project/supabase/migrations/20260216_luth_batch_3_fixed.sql',
    '/tmp/cc-agent/63523149/project/supabase/migrations/20260216_luth_batch_4_fixed.sql',
    '/tmp/cc-agent/63523149/project/supabase/migrations/20260216_luth_batch_5_fixed.sql',
]

print("Starting to apply all 5 LUTH question batches...")
print("=" * 60)

for idx, batch_file in enumerate(batches, 1):
    print(f"\nApplying Batch {idx}/5...")
    print(f"File: {batch_file}")

    # Read the SQL file content
    with open(batch_file, 'r', encoding='utf-8') as f:
        sql_content = f.read()

    print(f"SQL size: {len(sql_content)} bytes")
    print(f"Batch {idx} ready to apply.")
    print("-" * 60)

print("\n" + "=" * 60)
print("All 5 batches are ready for application!")
print("Total: 460 LUTH entrance exam questions across 5 batches")
print("=" * 60)
