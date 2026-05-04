-- Customer Churn Analysis SQL Project

CREATE DATABASE IF NOT EXISTS churn_analysis;
USE churn_analysis;

DROP TABLE IF EXISTS telco_churn_clean;

CREATE TABLE telco_churn_clean (
    customerID VARCHAR(50),
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    tenure INT,
    PhoneService VARCHAR(10),
    MultipleLines VARCHAR(30),
    InternetService VARCHAR(30),
    OnlineSecurity VARCHAR(30),
    OnlineBackup VARCHAR(30),
    DeviceProtection VARCHAR(30),
    TechSupport VARCHAR(30),
    StreamingTV VARCHAR(30),
    StreamingMovies VARCHAR(30),
    Contract VARCHAR(30),
    PaperlessBilling VARCHAR(10),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(10)
);

LOAD DATA LOCAL INFILE '/Users/aisyahihsani/Downloads/telco_clean.csv'
INTO TABLE telco_churn_clean
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*) AS total_rows
FROM telco_churn_clean;

-- 1. Overall churn rate
SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS churn_rate
FROM telco_churn_clean;

-- 2. Churn rate by contract type
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS churn_rate
FROM telco_churn_clean
GROUP BY Contract
ORDER BY churn_rate DESC;

-- 3. Average monthly charges by churn
SELECT 
    Churn,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM telco_churn_clean
GROUP BY Churn;

-- 4. Average tenure by churn
SELECT 
    Churn,
    ROUND(AVG(tenure), 2) AS avg_tenure
FROM telco_churn_clean
GROUP BY Churn;


-- 5. Payment Method

SELECT 
    PaymentMethod,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS churn_rate
FROM telco_churn_clean
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;