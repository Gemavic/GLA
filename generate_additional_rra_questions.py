#!/usr/bin/env python3
"""
Generate additional RRA exam questions for subjects with fewer questions.
Focuses on Ethics, Financial Products, and Economics subjects.
"""
import json

# Additional questions for subjects needing more coverage
additional_questions = [
    # Ethics and Professional Standards (RRA-ETHICS) - Add 16 questions
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "Which of the following best describes the principle of 'acting in the client's best interest'?",
        "options": [
            "Maximizing the advisor's commission while meeting minimum requirements",
            "Putting the client's interests ahead of the advisor's own interests",
            "Selling products that are suitable regardless of cost",
            "Meeting regulatory requirements without exceeding them"
        ],
        "correct_answer": "B",
        "explanation": "The fiduciary duty requires retirement advisors to put their clients' interests ahead of their own. This means recommending solutions that best serve the client, even if it means lower compensation for the advisor.",
        "difficulty": "easy",
        "topic": "Fiduciary Duty and Client Best Interest",
        "marks": 1
    },
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "Confidentiality in the advisor-client relationship means that client information:",
        "options": [
            "Can be shared with colleagues for educational purposes",
            "Must never be disclosed under any circumstances",
            "Should only be disclosed with client consent or when legally required",
            "Can be used for marketing purposes if anonymized"
        ],
        "correct_answer": "C",
        "explanation": "Advisors must maintain client confidentiality, but this is not absolute. Information may be disclosed with client consent or when legally required (e.g., court orders, regulatory investigations, or suspicion of illegal activity).",
        "difficulty": "medium",
        "topic": "Confidentiality and Privacy",
        "marks": 1
    },
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "A conflict of interest arises when:",
        "options": [
            "An advisor earns commission on products sold",
            "An advisor's personal interests may interfere with acting in the client's best interest",
            "A client disagrees with the advisor's recommendation",
            "An advisor works for multiple employers"
        ],
        "correct_answer": "B",
        "explanation": "A conflict of interest exists when the advisor's personal, business, or other interests could potentially interfere with their ability to act in the client's best interest. Such conflicts must be disclosed and managed appropriately.",
        "difficulty": "easy",
        "topic": "Conflicts of Interest",
        "marks": 1
    },
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "When an advisor discovers they have made an error that negatively affects a client, they should:",
        "options": [
            "Wait to see if the client notices the error",
            "Immediately disclose the error to the client and take corrective action",
            "Correct the error without informing the client",
            "Consult with compliance before taking any action"
        ],
        "correct_answer": "B",
        "explanation": "Professional ethics require advisors to immediately disclose errors to affected clients and take prompt corrective action. Transparency and accountability are fundamental to maintaining trust and meeting professional standards.",
        "difficulty": "easy",
        "topic": "Professional Conduct and Accountability",
        "marks": 1
    },
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "The 'know your client' (KYC) rule primarily requires advisors to:",
        "options": [
            "Verify the client's identity to prevent money laundering",
            "Understand the client's financial situation, needs, and risk tolerance",
            "Maintain regular contact with all clients",
            "Document all client communications"
        ],
        "correct_answer": "B",
        "explanation": "The KYC rule requires advisors to gather and maintain current information about their clients' financial circumstances, investment knowledge, risk tolerance, investment objectives, and time horizon to ensure suitable recommendations.",
        "difficulty": "easy",
        "topic": "Know Your Client (KYC)",
        "marks": 1
    },
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "Suitability in retirement planning means:",
        "options": [
            "Recommending only low-risk investments to retirees",
            "Ensuring recommendations align with the client's circumstances and objectives",
            "Selecting the products with the highest returns",
            "Choosing investments that match the advisor's risk tolerance"
        ],
        "correct_answer": "B",
        "explanation": "Suitability requires that recommendations be appropriate for the client's specific circumstances, including their financial situation, investment objectives, risk tolerance, investment knowledge, and time horizon.",
        "difficulty": "easy",
        "topic": "Suitability and Client-Centered Advice",
        "marks": 1
    },
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "An advisor who holds themselves out as a specialist in retirement planning:",
        "options": [
            "Must have at least 10 years of experience",
            "Should possess appropriate credentials and maintain competence in the area",
            "Can use any title they choose",
            "Is not subject to additional ethical obligations"
        ],
        "correct_answer": "B",
        "explanation": "Advisors who represent themselves as specialists must have appropriate credentials, training, and expertise in that area, and must maintain their competence through continuing education.",
        "difficulty": "medium",
        "topic": "Professional Competence and Credentials",
        "marks": 1
    },
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "When providing retirement income projections, an advisor should:",
        "options": [
            "Use optimistic assumptions to motivate clients",
            "Use conservative, realistic assumptions and clearly disclose them",
            "Guarantee minimum returns based on historical averages",
            "Avoid making any projections to limit liability"
        ],
        "correct_answer": "B",
        "explanation": "Advisors should use conservative, realistic assumptions when making projections and must clearly disclose all assumptions, limitations, and risks. Projections should never be presented as guarantees.",
        "difficulty": "medium",
        "topic": "Communication and Disclosure",
        "marks": 1
    },
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "An advisor receives a referral fee from an insurance company for recommending their products. The advisor:",
        "options": [
            "Can accept the fee without disclosure if it doesn't affect recommendations",
            "Must disclose the referral arrangement to clients",
            "Cannot accept referral fees under any circumstances",
            "Only needs to disclose if the client specifically asks"
        ],
        "correct_answer": "B",
        "explanation": "All compensation arrangements, including referral fees, must be disclosed to clients as they represent potential conflicts of interest. Clients have a right to know how their advisor is compensated.",
        "difficulty": "medium",
        "topic": "Disclosure of Compensation",
        "marks": 1
    },
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "When a client makes a decision that the advisor believes is not in their best interest, the advisor should:",
        "options": [
            "Refuse to implement the client's decision",
            "Document the discussion and implement the decision if it's legal and within the client's rights",
            "Implement the decision without discussion to respect the client's autonomy",
            "Report the client to regulatory authorities"
        ],
        "correct_answer": "B",
        "explanation": "While advisors must provide advice in the client's best interest, clients have the right to make their own decisions. The advisor should document the discussion, ensure the client understands the risks, and can implement the decision if it's legal and appropriate.",
        "difficulty": "hard",
        "topic": "Client Autonomy and Documentation",
        "marks": 1
    },
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "Professional indemnity insurance (errors and omissions insurance) is important because it:",
        "options": [
            "Eliminates the need for careful documentation",
            "Protects advisors from regulatory investigations",
            "Provides financial protection if a client suffers losses due to advisor errors",
            "Allows advisors to take greater risks with client investments"
        ],
        "correct_answer": "C",
        "explanation": "Professional indemnity insurance protects advisors against financial losses resulting from errors, omissions, or negligence in their professional services. It does not eliminate the obligation to act professionally or maintain proper standards.",
        "difficulty": "easy",
        "topic": "Professional Liability and Risk Management",
        "marks": 1
    },
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "The primary purpose of the CIFP Code of Ethics is to:",
        "options": [
            "Increase the profitability of financial planning practices",
            "Protect the public and maintain the profession's integrity",
            "Minimize legal liability for advisors",
            "Create barriers to entry for new advisors"
        ],
        "correct_answer": "B",
        "explanation": "Professional codes of ethics exist primarily to protect the public interest and maintain the integrity and reputation of the profession by establishing minimum standards of professional conduct.",
        "difficulty": "easy",
        "topic": "Professional Standards and Ethics",
        "marks": 1
    },
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "An advisor discovers that a colleague is engaging in unethical behavior. The advisor should:",
        "options": [
            "Ignore it if it doesn't directly affect their own clients",
            "Report the behavior to the appropriate authorities or regulatory bodies",
            "Confront the colleague privately but take no further action",
            "Wait until multiple complaints accumulate before reporting"
        ],
        "correct_answer": "B",
        "explanation": "Advisors have an ethical obligation to report known violations of professional standards or regulations to protect the public and maintain the profession's integrity. This includes reporting unethical conduct by colleagues.",
        "difficulty": "medium",
        "topic": "Professional Responsibility and Reporting",
        "marks": 1
    },
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "Continuing education requirements for retirement professionals primarily serve to:",
        "options": [
            "Generate revenue for professional organizations",
            "Ensure advisors maintain current knowledge and competence",
            "Create networking opportunities",
            "Justify higher fees to clients"
        ],
        "correct_answer": "B",
        "explanation": "Continuing education requirements ensure that professionals maintain current knowledge of regulations, products, strategies, and best practices, thereby protecting the public and maintaining professional competence.",
        "difficulty": "easy",
        "topic": "Professional Development and Competence",
        "marks": 1
    },
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "When communicating with clients, an advisor should:",
        "options": [
            "Use technical jargon to demonstrate expertise",
            "Communicate in clear language appropriate to the client's level of understanding",
            "Focus only on positive aspects to maintain client confidence",
            "Avoid discussing risks to prevent client anxiety"
        ],
        "correct_answer": "B",
        "explanation": "Advisors have an ethical obligation to communicate clearly and effectively, using language appropriate to the client's level of understanding. This includes balanced discussion of both opportunities and risks.",
        "difficulty": "easy",
        "topic": "Communication and Client Education",
        "marks": 1
    },
    {
        "subject_code": "RRA-ETHICS",
        "question_text": "The 'prudent investor rule' requires retirement advisors to:",
        "options": [
            "Invest only in guaranteed products for clients over age 65",
            "Exercise the care, skill, and diligence that a prudent person would use",
            "Achieve returns that exceed market benchmarks",
            "Avoid all investments with any element of risk"
        ],
        "correct_answer": "B",
        "explanation": "The prudent investor rule requires advisors to exercise the care, skill, diligence, and judgment that a prudent person acting in a similar capacity would use. It does not require guaranteed returns or elimination of all risk.",
        "difficulty": "medium",
        "topic": "Standard of Care and Prudent Management",
        "marks": 1
    },

    # Financial Products (RRA-FINPROD) - Add 15 questions
    {
        "subject_code": "RRA-FINPROD",
        "question_text": "A life annuity provides income payments that:",
        "options": [
            "Continue for a specified number of years regardless of survival",
            "Continue for the lifetime of the annuitant",
            "Can be withdrawn as a lump sum at any time",
            "Are guaranteed by the federal government"
        ],
        "correct_answer": "B",
        "explanation": "A life annuity provides regular income payments that continue for the lifetime of the annuitant (and potentially a survivor if a joint annuity). The payments cease upon death, providing longevity insurance.",
        "difficulty": "easy",
        "topic": "Annuities and Retirement Income",
        "marks": 1
    },
    {
        "subject_code": "RRA-FINPROD",
        "question_text": "The primary advantage of a term-certain annuity over a life annuity is:",
        "options": [
            "Higher monthly payments",
            "Guaranteed payment period regardless of survival",
            "Better inflation protection",
            "Lower tax liability"
        ],
        "correct_answer": "B",
        "explanation": "A term-certain annuity guarantees payments for a specific period (e.g., 10, 15, 20 years) regardless of whether the annuitant survives. If the annuitant dies during the term, payments continue to beneficiaries for the remainder of the period.",
        "difficulty": "medium",
        "topic": "Annuities and Retirement Income",
        "marks": 1
    },
    {
        "subject_code": "RRA-FINPROD",
        "question_text": "A Guaranteed Investment Certificate (GIC) is best described as:",
        "options": [
            "A deposit product offering guaranteed interest for a fixed term",
            "An insurance product providing lifetime income",
            "An equity investment with principal protection",
            "A government bond issued by the Bank of Canada"
        ],
        "correct_answer": "A",
        "explanation": "A GIC is a deposit product issued by financial institutions that guarantees the principal and a fixed interest rate for a specified term. GICs held at CDIC member institutions are insured up to $100,000 per depositor per institution.",
        "difficulty": "easy",
        "topic": "Fixed Income and Deposit Products",
        "marks": 1
    },
    {
        "subject_code": "RRA-FINPROD",
        "question_text": "Segregated funds differ from mutual funds primarily in that segregated funds:",
        "options": [
            "Always have higher returns",
            "Provide maturity and death benefit guarantees",
            "Have no management fees",
            "Cannot be held in registered accounts"
        ],
        "correct_answer": "B",
        "explanation": "Segregated funds are insurance products that offer maturity guarantees (typically 75-100% of deposits after 10 years) and death benefit guarantees. They also offer potential creditor protection and bypass probate, unlike mutual funds.",
        "difficulty": "medium",
        "topic": "Insurance-Based Investment Products",
        "marks": 1
    },
    {
        "subject_code": "RRA-FINPROD",
        "question_text": "The Canada Deposit Insurance Corporation (CDIC) insures eligible deposits up to:",
        "options": [
            "$50,000 per depositor per member institution",
            "$100,000 per depositor per member institution",
            "$250,000 per depositor per member institution",
            "$500,000 per depositor per member institution"
        ],
        "correct_answer": "B",
        "explanation": "CDIC insures eligible deposits up to $100,000 per depositor per insured category at each member institution. Coverage is per category (e.g., RRSP, TFSA, non-registered), allowing for more than $100,000 total coverage.",
        "difficulty": "easy",
        "topic": "Deposit Insurance and Protection",
        "marks": 1
    },
    {
        "subject_code": "RRA-FINPROD",
        "question_text": "A prescribed annuity offers tax advantages because:",
        "options": [
            "Payments are entirely tax-free",
            "The taxable portion is level throughout the annuity's life",
            "It can be held in an RRSP",
            "Capital gains treatment applies to all payments"
        ],
        "correct_answer": "B",
        "explanation": "Prescribed annuities (purchased with non-registered funds) spread the taxable interest portion evenly over the expected life of the annuity, unlike regular annuities where the taxable portion decreases over time as more principal is returned.",
        "difficulty": "hard",
        "topic": "Annuities and Tax Planning",
        "marks": 1
    },
    {
        "subject_code": "RRA-FINPROD",
        "question_text": "A variable annuity differs from a fixed annuity in that:",
        "options": [
            "Payments are not guaranteed and fluctuate based on investment performance",
            "It cannot be held in registered plans",
            "It has no death benefit",
            "It is not offered by insurance companies"
        ],
        "correct_answer": "A",
        "explanation": "Variable annuities provide payments that vary based on the performance of underlying investments (typically segregated funds or mutual funds). This offers growth potential but less payment certainty than fixed annuities.",
        "difficulty": "medium",
        "topic": "Annuities and Retirement Income",
        "marks": 1
    },
    {
        "subject_code": "RRA-FINPROD",
        "question_text": "Bonds are subject to interest rate risk, meaning that:",
        "options": [
            "Bond issuers may default on interest payments",
            "Bond prices fall when interest rates rise",
            "Interest payments may be taxed at higher rates",
            "Bonds cannot be sold before maturity"
        ],
        "correct_answer": "B",
        "explanation": "Interest rate risk (or price risk) refers to the inverse relationship between bond prices and interest rates. When market interest rates rise, existing bond prices fall to adjust their yield to current market levels.",
        "difficulty": "easy",
        "topic": "Fixed Income Investments and Risk",
        "marks": 1
    },
    {
        "subject_code": "RRA-FINPROD",
        "question_text": "The primary purpose of holding fixed income investments in a retirement portfolio is to:",
        "options": [
            "Maximize long-term capital growth",
            "Provide stability and regular income",
            "Achieve tax-free returns",
            "Protect against inflation"
        ],
        "correct_answer": "B",
        "explanation": "Fixed income investments (bonds, GICs) provide portfolio stability and predictable income, making them suitable for retirees who need regular cash flow and want to reduce volatility compared to equity-heavy portfolios.",
        "difficulty": "easy",
        "topic": "Portfolio Construction and Fixed Income",
        "marks": 1
    },
    {
        "subject_code": "RRA-FINPROD",
        "question_text": "Real Return Bonds (RRBs) are designed to protect investors against:",
        "options": [
            "Stock market volatility",
            "Credit risk",
            "Inflation risk",
            "Currency risk"
        ],
        "correct_answer": "C",
        "explanation": "Real Return Bonds have their principal adjusted for inflation (based on CPI), and interest is paid on the adjusted principal. This ensures the purchasing power of the investment is maintained despite inflation.",
        "difficulty": "easy",
        "topic": "Inflation-Protected Securities",
        "marks": 1
    },
    {
        "subject_code": "RRA-FINPROD",
        "question_text": "A laddered bond portfolio involves:",
        "options": [
            "Buying bonds with staggered maturity dates",
            "Investing equal amounts in stocks and bonds",
            "Reinvesting all interest payments",
            "Selling bonds before maturity to realize gains"
        ],
        "correct_answer": "A",
        "explanation": "A bond ladder strategy involves purchasing bonds with staggered maturity dates (e.g., 1, 2, 3, 4, 5 years). As each bond matures, proceeds are reinvested in new longer-term bonds, providing liquidity and managing interest rate risk.",
        "difficulty": "medium",
        "topic": "Fixed Income Strategies",
        "marks": 1
    },
    {
        "subject_code": "RRA-FINPROD",
        "question_text": "The cash surrender value of a permanent life insurance policy:",
        "options": [
            "Equals the death benefit",
            "Is the amount available if the policy is cancelled",
            "Is guaranteed to equal premiums paid",
            "Cannot be accessed during the policyholder's lifetime"
        ],
        "correct_answer": "B",
        "explanation": "Cash surrender value is the amount the policyholder receives if they cancel a permanent life insurance policy. It accumulates over time but may be less than premiums paid in early years due to fees and costs.",
        "difficulty": "easy",
        "topic": "Life Insurance as an Asset",
        "marks": 1
    },
    {
        "subject_code": "RRA-FINPROD",
        "question_text": "A reverse mortgage allows homeowners aged 55+ to:",
        "options": [
            "Borrow against home equity without selling the home",
            "Refinance their existing mortgage at a lower rate",
            "Receive government grants for home renovations",
            "Transfer their home to beneficiaries tax-free"
        ],
        "correct_answer": "A",
        "explanation": "A reverse mortgage allows homeowners to borrow against their home equity without having to make regular payments or sell their home. The loan (plus interest) is repaid when the home is sold or the homeowner passes away.",
        "difficulty": "easy",
        "topic": "Home Equity and Retirement Funding",
        "marks": 1
    },
    {
        "subject_code": "RRA-FINPROD",
        "question_text": "Systematic Withdrawal Plans (SWPs) from investment accounts:",
        "options": [
            "Guarantee a specific income for life",
            "Provide regular withdrawals that may deplete capital",
            "Are only available within RRSPs",
            "Must withdraw the same dollar amount each period"
        ],
        "correct_answer": "B",
        "explanation": "SWPs provide regular withdrawals (monthly, quarterly, etc.) from an investment account. Unlike annuities, they do not guarantee lifetime income and may deplete capital if withdrawals and losses exceed investment returns.",
        "difficulty": "medium",
        "topic": "Retirement Income Strategies",
        "marks": 1
    },
    {
        "subject_code": "RRA-FINPROD",
        "question_text": "The primary advantage of a joint and survivor annuity is:",
        "options": [
            "Higher initial payment amounts",
            "Payments continue to the surviving spouse after the first death",
            "Better tax treatment of payments",
            "Full capital is returned to the estate"
        ],
        "correct_answer": "B",
        "explanation": "A joint and survivor annuity continues to make payments to the surviving spouse after the death of the first annuitant, providing income security for couples. Payments are typically lower than single-life annuities due to longer expected payout period.",
        "difficulty": "easy",
        "topic": "Annuities and Survivor Protection",
        "marks": 1
    }
]

def main():
    print(f"Generated {len(additional_questions)} additional RRA questions")

    # Count by subject
    subjects = {}
    for q in additional_questions:
        subject = q['subject_code']
        subjects[subject] = subjects.get(subject, 0) + 1

    print("\n=== Summary by Subject ===")
    for subject, count in subjects.items():
        print(f"  {subject}: {count} questions")

    # Save to JSON
    output_file = 'rra_additional_questions_batch2.json'
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(additional_questions, f, indent=2, ensure_ascii=False)

    print(f"\nQuestions saved to {output_file}")

    # Show sample
    print("\n=== Sample Questions ===")
    for i, q in enumerate(additional_questions[:2], 1):
        print(f"\nQ{i}: {q['question_text']}")
        print(f"Subject: {q['subject_code']}")
        for j, opt in enumerate(q['options'], 0):
            letter = chr(65 + j)
            print(f"  {letter}. {opt}")
        print(f"Answer: {q['correct_answer']}")

if __name__ == '__main__':
    main()
