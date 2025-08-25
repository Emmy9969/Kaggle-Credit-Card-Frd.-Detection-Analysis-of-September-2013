Use [Kaggle Creditcard Frd.]
go
select * from [Kaggle Creditcard Frd.]

--Question 1. How many fraudulent transactions are in the dataset?
SELECT COUNT(*) AS Fraud_Count
FROM [Kaggle Creditcard Frd.]
WHERE Class = 1;

--Question 2. What percentage of the transactions are fraudulent?
SELECT (COUNT(CASE WHEN Class = 1 THEN 1 END) * 100.0 / COUNT(*)) AS Fraud_Percentage
FROM [Kaggle Creditcard Frd.];

--Question 3. What is the average transaction amount for fraudulent vs. non-fraudulent transactions?
SELECT Class, AVG(Amount) AS Avg_Transaction_Amount
FROM [Kaggle Creditcard Frd.]
GROUP BY Class;


-- Question 4. What is the maximum transaction amount recorded in the dataset?
SELECT MAX(Amount) AS Max_Transaction_Amount
FROM [Kaggle Creditcard Frd.];

--Questiopn 5. What is the Toatl Amount of Transactions?
SELECT SUM(Amount) AS Total_Transactions_Amount from [Kaggle Creditcard Frd.]