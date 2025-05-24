# Contoso Sales Analysis - SQL Project 

## Overview
An analysis of customer behavior, retention patterns, and lifetime value for an e-commerce business, aimed at enhancing customer retention and maximizing revenue.

---

## Business Questions
- **Customer Segmentation**: Who are our most valuable customers?
- **Cohort Analysis**: How do different customer groups generate revenue?
- **Retention Analysis**: Which customers haven't purchased recently?

---

## Clean Up Data

🖥️ **Query**: [Cohort Analysis View](cohort_analysis_view.sql)


- Combined sales and customer data to generate revenue metrics.
- Determined first purchase dates to support cohort analysis.
- Built a view that integrates transaction data with customer information.

---

## Analysis

### 1. Customer Segmentation

🖥️ **Query**: `1_customer_segmentation.sql`

- Categorized customers based on total lifetime value (LTV)  
- Assigned customers to High, Mid, and Low-value segments  
- Calculated key metrics like total revenue

📈 **Visualization**: Customer Segmentation

📊 **Key Findings**:
- **High-value** segment (25% of customers) drives **66% of revenue** ($135.4M)
- **Mid-value** segment (50% of customers) generates **32% of revenue** ($66.6M)
- **Low-value** segment (25% of customers) accounts for **2% of revenue** ($4.3M)

💡 **Business Insights**:
- **High-Value (66% revenue)**: Offer premium membership program to 12,372 VIP customers
- **Mid-Value (32% revenue)**: Create upgrade paths through personalized promotions  
- **Low-Value (2% revenue)**: Design re-engagement campaigns and price-sensitive promotions

---

### 2. Customer Revenue by Cohort

🖥️ **Query**: `2_cohort_analysis.sql`

- Tracked revenue and customer count per cohort  
- Grouped cohorts by year of first purchase  
- Analyzed customer revenue at a cohort level

📈 **Visualizations**:
- Customer Revenue by Cohort (Adjusted for time in market)  
- Customer Revenue Normalized  
- Monthly Revenue & Customer Trends (3-Month Rolling Average)

📊 **Key Findings**:
- Customer revenue is declining: 2016–2018 cohorts spent ~$2,800+ vs. 2024 cohort ~$1,970  
- Revenue and customer counts peaked in 2022–2023, now trending downward  
- Sharp drops in 2020 and 2024 show retention challenges

💡 **Business Insights**:
- Target 2022–2024 cohorts with personalized offers  
- Introduce loyalty/subscription programs for consistent spending  
- Apply strategies from high-spending cohorts (2016–2018) to newer ones

---

### 3. Customer Retention

🖥️ **Query**: `3_retention_analysis.sql`

- Identified customers at risk of churning  
- Analyzed last purchase patterns  
- Calculated customer-specific metrics

📈 **Visualization**: Customer Churn by Cohort Year

📊 **Key Findings**:
- Cohort churn stabilizes at ~90% after 2–3 years  
- Retention rates consistently low (8–10%) across all cohorts  
- Newer cohorts (2022–2023) show similar churn patterns

💡 **Business Insights**:
- Strengthen early engagement (1–2 years) with onboarding incentives  
- Re-engage high-value churned customers with win-back campaigns  
- Predict & preempt churn using customer-specific indicators

---

## Strategic Recommendations

### Customer Value Optimization (Customer Segmentation)
- Launch VIP program for 12,372 high-value customers (66% revenue)
- Personalized upgrade paths for mid-value segment ($66.6M → $135.4M opportunity)
- Price-sensitive promotions for low-value segment

### Cohort Performance Strategy (Customer Revenue by Cohort)
- Target 2022–2024 cohorts with personalized offers
- Implement loyalty/subscription programs
- Apply strategies from 2016–2018 cohorts to newer customers

### Retention & Churn Prevention (Customer Retention)
- Strengthen engagement in first 1–2 years
- Targeted win-back campaigns for high-value churned customers
- Proactive intervention for at-risk users

---

## Technical Details

- **Database**: PostgreSQL  
- **Analysis Tools**: PostgreSQL, DBeaver  
- **Visualization**: ChatGPT
