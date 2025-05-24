# 🌐 Contoso Sales Analysis - SQL Project 

📘 [View Key Concepts & Techniques Behind The Project](https://www.notion.so/Contoso-Sales-Analysis-SQL-1f93872979c180d095def1f3dfe8bdd2?pvs=4)


## Overview
An analysis of customer behavior, retention patterns, and lifetime value for an e-commerce business, aimed at enhancing customer retention and maximizing revenue.

---

## 📋 Business Questions
- **Customer Segmentation**: Who are our most valuable customers?
- **Cohort Analysis**: How do different customer groups generate revenue?
- **Retention Analysis**: Which customers haven't purchased recently?

---

## 🧹 Clean Up Data

🖥️ **Query**: [Cohort Analysis View](Project_Queries/cohort_analysis_view.sql)


- Combined sales and customer data to generate revenue metrics.
- Determined first purchase dates to support cohort analysis.
- Built a view that integrates transaction data with customer information.

---

## 🕵️‍♂️ Analysis

### 1. Customer Segmentation

🖥️ **Query**: [1- Customer Segmentation](Project_Queries/1_customer_segmentation.sql)

- Grouped customers according to their total lifetime value (LTV)
- Classified customers into High, Mid, and Low-value tiers
- Computed essential metrics such as total revenue

📈 **Visualization**: 

<img src="images/Customer%20Segmentation.png" alt="Chart" width="40%"/>



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

🖥️ **Query**: [2- Cohort Analysis](Project_Queries/2_cohort_analysis.sql)

- Monitored revenue and customer numbers for each cohort
- Organized cohorts based on the year of their initial purchase
- Examined revenue trends across different customer cohorts

📈 **Visualizations**:

**Customer Revenue by Cohort (Adjusted for time in market) - First Purchase Date**

<img src="images/customers%20revenue%20first%20pruchase.png" alt="Chart" width="55%"/>
  
**Investigate Monthly Revenue & Customer Trends (3 Month Rolling Average)**

<img src="images/monthly%20net%20rev%20for%203.png" alt="Chart" width="55%"/>

📊 **Key Findings**:
- Customer revenue is decreasing: cohorts from 2016–2018 spent around $2,800+, while the 2024 cohort averaged approximately $1,970
- Both revenue and customer numbers reached their highest levels in 2022–2023, but have since started to decline
- Significant dips in 2020 and 2024 highlight ongoing retention issues

💡 **Business Insights**:
- Focus on 2022–2024 cohorts by delivering personalized promotional offers
- Implement loyalty or subscription-based programs to encourage steady spending
- Replicate successful tactics from high-value cohorts (2016–2018) to engage recent customers

---

### 3. Customer Retention

🖥️ **Query**: [3- Retention Analysis](Project_Queries/3_retention_analysis.sql)

- Identified customers at risk of churning  
- Analyzed last purchase patterns  
- Calculated customer-specific metrics

📈 **Visualization**: 

<img src="images/customer%20retention.png" alt="Chart" width="55%"/>


📊 **Key Findings**:

- Churn rates level off at around 90% after 2 to 3 years
- Retention remains consistently low across all cohorts, typically between 8% and 10%
- Recent cohorts (2022–2023) exhibit churn trends similar to earlier years

💡 **Business Insights**:
- Strengthen early engagement (1–2 years) with onboarding incentives  
- Re-engage high-value churned customers with win-back campaigns  
- Predict & preempt churn using customer-specific indicators

---

## 🎯 Strategic Recommendations

### Customer Value Optimization (Customer Segmentation)
- Introduce a VIP program for 12,372 high-value customers contributing 66% of total revenue
- Develop personalized upgrade strategies for mid-value customers, unlocking a potential revenue increase from $66.6M to $135.4M
- Offer price-sensitive promotions aimed at increasing purchase frequency within the low-value segment

### Cohort Performance Strategy (Customer Revenue by Cohort)
- Focus on the 2022–2024 cohorts through personalized re-engagement campaigns
- Launch loyalty or subscription models to promote consistent spending
- Apply strategies from 2016–2018 cohorts to newer customers

### Retention & Churn Prevention (Customer Retention)
- Boost early-stage customer engagement during the first 1–2 years
- Run targeted win-back initiatives to recover high-value churned users
- Proactive intervention for at-risk users

---

## 🛠️ Technical Details

- **Database**: PostgreSQL  
- **Analysis Tools**: PostgreSQL, DBeaver  
- **Visualization**: Excel, ChatGPT
