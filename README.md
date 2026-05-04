# customer-churn-analysis
Customer churn analysis using Python, SQL, and Tableau with business insights on retention strategies.

## Overview
This project explores customer churn behavior in a telecom company using data-driven analysis. The main goal is to understand why customers leave and identify patterns that can help improve customer retention.

Rather than focusing only on numbers, this analysis emphasizes customer behavior, lifecycle patterns, and business impact.

## Objectives
Measure overall churn rate
Identify key drivers of churn
Understand customer behavior across lifecycle stages
Provide actionable recommendations to reduce churn

## Tools Used
Python (Pandas) → Data cleaning & preparation
SQL (MySQL) → Data aggregation & analytical queries
Tableau → Data visualization & dashboard creation

## Dataset
Telco Customer Churn Dataset (~7,000 customers)
Includes:
Demographics
Contract types
Monthly charges
Tenure (customer lifetime)
Churn status

## Data Preparation
Data cleaning was performed in Python to ensure reliability before analysis:

Converted data types (e.g., TotalCharges to numeric)
Handled missing values
Verified data consistency
Exported clean dataset for SQL and visualization

## Key Findings
1. High Overall Churn Rate

Approximately 26.6% of customers churned, meaning 1 in 4 customers leave the service. This indicates a significant retention issue that requires attention.

2. Customer Lifecycle is Critical (Tenure Insight)

One of the strongest findings is the relationship between tenure and churn:

Average tenure (churned customers): ~18 months
Average tenure (retained customers): ~37 months

This reveals a critical pattern:

Customers are most likely to churn within their first ~17–20 months.

This period represents a high-risk churn window, where customers are still forming their perception of value.

Why Early Churn Happens?

Customers in early stages tend to:

Still evaluate whether the service is worth the cost
Be more price-sensitive
Compare competitors more actively
Lack long-term commitment

Without strong onboarding or early engagement, they are more likely to leave.

3. Contract Type Drives Churn

Contract type is one of the strongest predictors:

Month-to-month → ~42.7% churn
One-year → ~11%
Two-year → ~2.8%

Insight:
Customers without commitment are significantly more likely to leave.

4. Pricing Impact (Monthly Charges)

Customers who churn pay higher monthly charges on average:

Churned customers: ~74
Retained customers: ~61

Insight:
Higher pricing may lead to dissatisfaction if perceived value is not met.

5. Combined Risk Pattern

The highest churn risk occurs when multiple factors combine:

Month-to-month contract
Low tenure (new customers)
Higher monthly charges

These customers represent the most vulnerable segment.

Business Recommendations

Based on the findings:
Encourage long-term contracts through incentives
Improve onboarding experience for new customers
Monitor high-paying customers more closely
Introduce early retention strategies (first 6–12 months)
Provide value-based pricing or bundled services

Dashboard

A Tableau dashboard was created to visualize key insights:

Churn Overview
Churn by Contract Type
Customer Tenure Analysis
Monthly Charges Analysis

The dashboard is designed to provide quick and clear insights for decision-making.

Workflow
Data Cleaning (Python) → Analysis (SQL) → Visualization (Tableau)

Conclusion

This analysis highlights that churn is not random — it follows clear behavioral patterns.

The most critical takeaway is that early-stage customers are the most at risk, and improving their experience can significantly reduce churn.

Understanding these patterns allows businesses to move from reactive decisions to proactive retention strategies.

[Aisyah Ihsani]
