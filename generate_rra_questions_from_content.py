#!/usr/bin/env python3
"""
Generate RRA exam questions from PDF study content.
This script creates multiple-choice questions based on the key concepts
in the RRA study materials.
"""
import json
import sys

# Module 1: Demographics, Relationships, and Client Engagement
# Based on RETIREMENT_REGISTER_ANALYST_-1.pdf content

module1_questions = [
    {
        "subject_code": "RRA-CE",
        "question_text": "In Canada, the baby boom period is generally defined as:",
        "options": [
            "1940 to 1960",
            "1947 to 1964",
            "1950 to 1970",
            "1945 to 1962"
        ],
        "correct_answer": "B",
        "explanation": "The baby boom in Canada occurred from 1947 to 1964, followed by the baby bust period. This demographic shift has significant implications for retirement planning and government programs.",
        "difficulty": "easy",
        "topic": "Demographics and Population Aging",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "The period immediately following the baby boom (after 1964) lasting approximately 10 years is referred to as:",
        "options": [
            "The baby boom echo",
            "The baby bust",
            "The demographic transition",
            "The fertility decline"
        ],
        "correct_answer": "B",
        "explanation": "The baby bust period followed the baby boom and lasted approximately 10 years after 1964. Together, the baby boom and baby bust are sometimes called the 'baby boom tidal wave.'",
        "difficulty": "easy",
        "topic": "Demographics and Population Aging",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "Only four countries experienced a baby boom tidal wave of notable severity. Which of the following is NOT one of these countries?",
        "options": [
            "Canada",
            "United Kingdom",
            "Australia",
            "New Zealand"
        ],
        "correct_answer": "B",
        "explanation": "The four countries that experienced a baby boom tidal wave of notable severity are Canada, United States, Australia, and New Zealand. The UK experienced different demographic patterns.",
        "difficulty": "medium",
        "topic": "Demographics and Population Aging",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "As of 2022, what is the approximate median age of Canada's population?",
        "options": [
            "35.0 years",
            "38.0 years",
            "41.0 years",
            "44.0 years"
        ],
        "correct_answer": "C",
        "explanation": "As of 2022, the median age of Canada's population was approximately 41.0 years, meaning exactly one-half of the population is older and the other half is younger than this age.",
        "difficulty": "easy",
        "topic": "Demographics and Population Aging",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "According to Statistics Canada data, between 1921 and 2022, the increase in life expectancy at birth was greater for:",
        "options": [
            "Males (increased by 23.2 years)",
            "Females (increased by 23.2 years)",
            "Both increased equally",
            "Data shows males increased by 25 years"
        ],
        "correct_answer": "B",
        "explanation": "The increase in life expectancy has been more dramatic for females (23.2 years) than for males (20.5 years) between 1921 and 2022. As a result, the average female can expect to outlive the average male by approximately 4.5 years.",
        "difficulty": "medium",
        "topic": "Life Expectancy and Retirement Planning",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "By 2021, what significant demographic milestone occurred in Canada?",
        "options": [
            "More people aged 50+ than under 50",
            "More people aged 65+ than aged 0-14",
            "Life expectancy exceeded 90 years",
            "Median age reached 50 years"
        ],
        "correct_answer": "B",
        "explanation": "In 2021, for the first time in Canadian history, there were more people aged 65 and older than people aged 0 to 14, marking a significant shift in the population age structure.",
        "difficulty": "medium",
        "topic": "Demographics and Population Aging",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "By 2031, individuals of traditional retirement age (65+) are projected to make up what percentage of Canada's population?",
        "options": [
            "15% to 18%",
            "18% to 21%",
            "21% to 24%",
            "23% to 25%"
        ],
        "correct_answer": "D",
        "explanation": "By 2031, when the entire baby boom generation will have attained age 65, individuals aged 65 and over will make up between 23% and 25% of Canada's total population—nearly double the level in 2009.",
        "difficulty": "medium",
        "topic": "Demographics and Population Aging",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "What is the primary reason attributed to Canada's post-war baby boom?",
        "options": [
            "Soldiers returning from war and starting families",
            "Government incentives for larger families",
            "Strong economy allowing families to afford children",
            "Medical advances reducing infant mortality"
        ],
        "correct_answer": "C",
        "explanation": "The baby boom can more appropriately be attributed to the strong economy of the post-war era compared to the previous depression era. Couples felt financially secure and could afford to have large families.",
        "difficulty": "medium",
        "topic": "Demographics and Population Aging",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "In 1961, what percentage of CPP workers contributed for each eligible CPP recipient?",
        "options": [
            "2-3 workers per recipient",
            "4-5 workers per recipient",
            "6-7 workers per recipient",
            "8-9 workers per recipient"
        ],
        "correct_answer": "C",
        "explanation": "In the early years of CPP, six to seven workers were making CPP contributions for every eligible CPP recipient. By 2031, this ratio is projected to decline to only 2.6 workers per recipient.",
        "difficulty": "hard",
        "topic": "Government Retirement Programs",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "By 2031, at the peak of the baby boomers' retirement years, approximately how many workers will make CPP contributions for every eligible recipient?",
        "options": [
            "4.5 workers",
            "3.5 workers",
            "2.6 workers",
            "1.8 workers"
        ],
        "correct_answer": "C",
        "explanation": "By 2031, there will be only 2.6 workers to make CPP contributions for every eligible recipient, down from 6-7 workers in the 1960s. This dramatic decrease will place enormous strain on the CPP system.",
        "difficulty": "medium",
        "topic": "Government Retirement Programs",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "Life expectancy is best defined as:",
        "options": [
            "The maximum age a person can live to",
            "The average number of years of life remaining at a specific age",
            "The age at which 50% of people have died",
            "The guaranteed number of years in retirement"
        ],
        "correct_answer": "B",
        "explanation": "Life expectancy is the average number of years of life remaining for a person at a specific age, assuming the current mortality rates prevail for the remainder of that person's life.",
        "difficulty": "easy",
        "topic": "Life Expectancy and Retirement Planning",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "According to Statistics Canada data, a male born in 2019 can expect to live approximately how many years?",
        "options": [
            "75 years",
            "77 years",
            "80 years",
            "83 years"
        ],
        "correct_answer": "C",
        "explanation": "According to 2019 Statistics Canada data, life expectancy at birth for males was approximately 80.0 years, while for females it was 84.2 years.",
        "difficulty": "easy",
        "topic": "Life Expectancy and Retirement Planning",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "Between 1921 and 2019, life expectancy at age 65 for males increased from 13.0 years to approximately:",
        "options": [
            "16.5 years",
            "17.5 years",
            "19.5 years",
            "21.5 years"
        ],
        "correct_answer": "C",
        "explanation": "Life expectancy at age 65 for males increased from 13.0 years in 1921 to 19.5 years in 2019—an increase of 6.5 years. This has significant implications for retirement income planning.",
        "difficulty": "medium",
        "topic": "Life Expectancy and Retirement Planning",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "The significant increase in life expectancy over the past century can primarily be attributed to:",
        "options": [
            "Genetic improvements in human biology",
            "Reduced workplace accidents",
            "Advances in medicine, hygiene, and living standards",
            "Government healthcare programs"
        ],
        "correct_answer": "C",
        "explanation": "Life expectancies have been increasing primarily as a result of advances in medicine, hygiene, and living standards throughout the 20th and 21st centuries.",
        "difficulty": "easy",
        "topic": "Life Expectancy and Retirement Planning",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "The trend of increased life expectancy will most directly result in:",
        "options": [
            "Lower retirement savings requirements",
            "A longer period of retirement requiring larger accumulated funds",
            "Earlier retirement ages",
            "Reduced need for estate planning"
        ],
        "correct_answer": "B",
        "explanation": "Increased life expectancy means a longer period of retirement for many individuals, and therefore, a need for accumulating larger amounts of retirement funds to sustain income throughout retirement.",
        "difficulty": "easy",
        "topic": "Life Expectancy and Retirement Planning",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "The fact that average females outlive average males by approximately 4.5 years creates what social concern?",
        "options": [
            "Increased demand for male-focused healthcare",
            "Majority of late retirees needing support will be female",
            "Higher CPP costs for male recipients",
            "Need for gender-based retirement ages"
        ],
        "correct_answer": "B",
        "explanation": "Since females outlive males by approximately 4.5 years on average, the majority of late retirees (those over 80) that need support will be female. This creates growing social and financial planning challenges.",
        "difficulty": "medium",
        "topic": "Life Expectancy and Retirement Planning",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "OAS (Old Age Security) benefits are funded through:",
        "options": [
            "Employee and employer payroll contributions",
            "General tax revenues",
            "Investment returns on a dedicated fund",
            "Provincial government transfers"
        ],
        "correct_answer": "B",
        "explanation": "OAS is funded out of general tax revenues, unlike CPP which is primarily funded by contributions of the current labour force.",
        "difficulty": "easy",
        "topic": "Government Retirement Programs",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "CPP benefits are primarily funded by:",
        "options": [
            "General tax revenues",
            "Contributions of the current labour force",
            "Corporate taxes",
            "Investment returns on government bonds"
        ],
        "correct_answer": "B",
        "explanation": "CPP benefits are primarily funded by the contributions of the current labour force (employees and employers), unlike OAS which is funded through general tax revenues.",
        "difficulty": "easy",
        "topic": "Government Retirement Programs",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "During which period will the baby boomers have the most significant impact on social retirement programs?",
        "options": [
            "2000 to 2020",
            "2010 to 2030",
            "2017 to 2046",
            "2031 to 2050"
        ],
        "correct_answer": "C",
        "explanation": "It is during the years between 2017 and 2046 that the baby boomers will have the most significant impact on social retirement programs, with the peak occurring around 2031.",
        "difficulty": "medium",
        "topic": "Government Retirement Programs",
        "marks": 1
    },
    {
        "subject_code": "RRA-CE",
        "question_text": "In the 1960s when government social programs began having significant effects on retirees, what approximate percentage of the population was aged 65 or over?",
        "options": [
            "5%",
            "10%",
            "15%",
            "20%"
        ],
        "correct_answer": "B",
        "explanation": "In the early years of OAS and CPP (1960s), only about 10% of the population was aged 65 or over. By 2031, this is projected to reach approximately 24%.",
        "difficulty": "medium",
        "topic": "Government Retirement Programs",
        "marks": 1
    }
]

def main():
    print(f"Generated {len(module1_questions)} questions for RRA Module 1")

    # Save to JSON file
    output_file = 'rra_additional_questions.json'
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(module1_questions, f, indent=2, ensure_ascii=False)

    print(f"Questions saved to {output_file}")

    # Print summary
    subjects = {}
    difficulties = {}
    for q in module1_questions:
        subject = q['subject_code']
        difficulty = q['difficulty']
        subjects[subject] = subjects.get(subject, 0) + 1
        difficulties[difficulty] = difficulties.get(difficulty, 0) + 1

    print("\n=== Summary ===")
    print("By Subject:")
    for subject, count in subjects.items():
        print(f"  {subject}: {count} questions")

    print("\nBy Difficulty:")
    for difficulty, count in difficulties.items():
        print(f"  {difficulty}: {count} questions")

    print("\n=== Sample Questions ===")
    for i, q in enumerate(module1_questions[:3], 1):
        print(f"\nQ{i}: {q['question_text']}")
        for j, opt in enumerate(q['options'], 0):
            letter = chr(65 + j)
            print(f"  {letter}. {opt}")
        print(f"Answer: {q['correct_answer']}")

if __name__ == '__main__':
    main()
