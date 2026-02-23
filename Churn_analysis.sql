CREATE DATABASE churn_analysis;
USE churn_analysis;

CREATE TABLE churn 
( customerID VARCHAR(50),
gender VARCHAR(10),
SeniorCitizen INT,
Partner VARCHAR(10),
Dependents VARCHAR(10),
tenure INT,
PhoneService VARCHAR(10),
MultipleLines VARCHAR(20),
InternetServices VARCHAR(20),
OnlineSecurtiy VARCHAR(20),
OnlineBackup VARCHAR(20),
DeviceProtection VARCHAR(20),
TechSupport VARCHAR(20),
StreamingTv VARCHAR(20),
StreamingMovies VARCHAR(20),
Contract VARCHAR(20),
PaperlessBilling VARCHAR(10),
PaymentMethod VARCHAR(50),
MonthlyCharges FLOAT,
TotalCharges FLOAT,
Churn VARCHAR(10)
);

SELECT 
 COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    (SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)/COUNT(*))*100 AS churn_rate
FROM churn;

SELECT Contract,
       COUNT(*) AS total,
       SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned
FROM churn
GROUP BY Contract;