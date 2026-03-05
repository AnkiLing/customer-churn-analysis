-- Overall churn rate
SELECT
COUNT(*) AS total_customers,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS churn_rate
FROM telco_churn;

-- Churn rate by contract
SELECT
Contract,
COUNT(*) AS customers,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS churn_rate
FROM telco_churn
GROUP BY Contract;

-- Churn by internet service
SELECT
InternetService,
COUNT(*) AS customers,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned
FROM telco_churn
GROUP BY InternetService;

-- Average monthly charges by churn
SELECT
Churn,
AVG(MonthlyCharges) AS avg_monthly_charge
FROM telco_churn
GROUP BY Churn;
