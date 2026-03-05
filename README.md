# Customer Churn Analysis & Retention Dashboard

## Project Overview

Customer churn is a major challenge for subscription-based businesses. Retaining existing customers is often significantly cheaper than acquiring new ones, making churn analysis an essential component of data-driven decision making.

This project analyses customer churn patterns using the Telco Customer Churn dataset. The objective was to identify key factors influencing churn and develop a dashboard to support business stakeholders in monitoring retention trends.

The analysis combines SQL-based querying, Python exploratory data analysis, and business-oriented data visualisation.

---

## Business Questions

This analysis aimed to answer the following questions:

- What is the overall customer churn rate?
- Which customer segments have the highest churn risk?
- How do contract type, tenure, and monthly charges influence churn?
- Which customer characteristics are associated with long-term retention?

---

## Dataset

Dataset: Telco Customer Churn Dataset

The dataset contains information on customer demographics, service subscriptions, billing information, and churn status.

Key variables include:

- CustomerID
- Gender
- SeniorCitizen
- Tenure
- Contract type
- Monthly charges
- Total charges
- Internet service
- Churn status

The dataset includes approximately 7,000 customers.

---

## Tools Used

- SQL – querying and aggregating churn metrics
- Python (Pandas, Matplotlib, Seaborn) – data cleaning and analysis
- Power BI / Tableau – dashboard creation
- GitHub – project documentation and version control

---

## Data Cleaning

The following preprocessing steps were performed:

- Converted categorical variables into consistent formats
- Removed missing values in TotalCharges
- Converted TotalCharges to numeric format
- Standardised churn variable into binary format
- Checked for duplicate customer records

---

## Exploratory Data Analysis

The following analyses were conducted:

- Overall churn rate
- Churn by contract type
- Churn by tenure group
- Churn by monthly charges
- Churn by internet service type

Visualisations were used to identify patterns and segment high-risk customer groups.

---

## Key Findings

Key insights from the analysis include:

• Customers with month-to-month contracts exhibit significantly higher churn rates compared to customers on longer-term contracts.

• Customers with higher monthly charges are more likely to churn.

• Customer tenure strongly correlates with retention, with churn most likely in the first year.

• Fibre internet customers demonstrate higher churn compared to DSL customers.

---

## Dashboard

The dashboard presents key metrics including:

- Overall churn rate
- Churn by contract type
- Monthly revenue by customer segment
- Customer tenure distribution
- High-risk churn segments

The goal of the dashboard is to enable business stakeholders to quickly identify retention risks and support targeted customer retention strategies.

---

## Example SQL Analysis

Example SQL queries used in the analysis include:

**Overall churn rate**

SELECT  
COUNT(*) AS total_customers,  
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,  
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS churn_rate  
FROM telco_churn;

**Churn rate by contract type**

SELECT  
Contract,  
COUNT(*) AS customers,  
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,  
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS churn_rate  
FROM telco_churn  
GROUP BY Contract;

**Average monthly charges by churn**

SELECT  
Churn,  
AVG(MonthlyCharges) AS avg_monthly_charge  
FROM telco_churn  
GROUP BY Churn;

---

## Business Impact

The analysis highlights key opportunities to reduce churn:

- Encourage migration from month-to-month to long-term contracts
- Provide retention incentives for new customers in their first year
- Investigate service quality issues associated with fibre internet customers

These insights can support targeted retention strategies and improve customer lifetime value.

---

## Future Improvements

Future extensions of this project could include:

- Predictive churn modelling using machine learning
- Customer lifetime value modelling
- More granular cohort analysis
- Automated dashboard updates from live data pipelines

---

## Author

Anke Lingscheid  
PhD Psychology | Data Analytics & Data Visualisation
