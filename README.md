# <h1 id="KaggleCreditCardFrd.DetectionAnalysis,September2013"> Kaggle Credit Card Frd. Detection Analysis, September 2013</h1>

This dataset contains 284,807 anonymized credit card transactions with three fields: Time (seconds since first transaction), Amount (transaction value), and Class (0 = normal, 1 = fraud). Fraudulent cases make up less than 0.2%, making it useful for anomaly detection and machine learning fraud prediction.

# Executive Summary

The credit card fraud detection dataset contains 284,807 anonymized transactions, each with details on transaction time, amount, and classification as fraudulent or legitimate. Fraudulent transactions account for less than 0.2% of the data, highlighting the extreme imbalance that makes fraud detection a complex challenge.

This dataset provides a valuable resource for analyzing transaction behavior, identifying unusual spending patterns, and building predictive models for fraud detection. Its size and imbalance closely mirror real-world scenarios, making it an ideal benchmark for testing the effectiveness of anomaly detection and machine learning algorithms.

# Report Objectives

- To determine how many fraudulent transactions are present in the dataset.

- To calculate the percentage of transactions that are fraudulent.

- To compare the average transaction amount between fraudulent and non-fraudulent transactions.

- To identify the maximum transaction amount recorded in the dataset.

- To compute the total amount of all transactions in the dataset.


# Data Sources

The dataset used in this study is obtained from Kaggle’s Credit Card Fraud Detection dataset. It contains anonymized credit card transactions made by European cardholders in September  2013. The dataset includes 284,807 transactions, with features such as transaction Time, Amount, and a Class label indicating whether the transaction is legitimate (0) or fraudulent (1). Fraudulent transactions represent less than 0.2% of the total, reflecting the real-world imbalance of fraud detection problems.

# Methodology

- Data Collection: The dataset was sourced from Kaggle’s Credit Card Fraud Detection repository. It consists of 284,807 anonymized credit card transactions with three key variables: Time, Amount, and Class (fraud or non-fraud).

- Data Preparation: The dataset was imported into Power BI and SQL for analysis. Data cleaning involved verifying column integrity, ensuring no missing values, and checking for outliers in transaction amounts.

- Descriptive Analysis: Basic descriptive statistics were applied to determine the number of fraudulent transactions, the percentage of frauds, the average amounts for fraudulent vs. non-fraudulent transactions, the maximum transaction amount, and the total value of all transactions.

- Visualization & Reporting: Power BI was used to create visual representations, including cards, tables, and charts, to highlight fraud distribution, transaction value comparisons, and overall patterns.

- Interpretation: Results were interpreted in relation to fraud detection challenges, emphasizing the imbalance in the dataset and its implications for financial risk management.


# Research Questions
- How many fraudulent transactions are in the dataset?
- What percentage of the transactions are fraudulent?
- What is the average transaction amount for fraudulent vs. non-fraudulent transactions?
- What is the maximum transaction amount recorded in the dataset?
- What is the Toatl Amount of Transactions?



# Data Analysis
- A Query to know how many fraudulent transactions are in the dataset?

SELECT COUNT(*) AS Fraud_Count
FROM [Kaggle Creditcard Frd.]
WHERE Class = 1;


- A Query to know what percentage of the transactions are fraudulent?

SELECT (COUNT(CASE WHEN Class = 1 THEN 1 END) * 100.0 / COUNT(*)) AS Fraud_Percentage
FROM [Kaggle Creditcard Frd.];


- A Query to know the average transaction amount for fraudulent vs. non-fraudulent transactions?

SELECT Class, AVG(Amount) AS Avg_Transaction_Amount
FROM [Kaggle Creditcard Frd.]
GROUP BY Class;


- A Query to know the maximum transaction amount recorded in the dataset?

SELECT MAX(Amount) AS Max_Transaction_Amount
FROM [Kaggle Creditcard Frd.];

- A Query know to the Toatl Amount of Transactions?


SELECT SUM(Amount) AS Total_Transactions_Amount from [Kaggle Creditcard Frd.]




 # Results
 - There are 492 fraudulent transactions out of 284,807 total transactions.
 - Fraudulent transactions account for 0.17% of all transactions.
 - The average fraudulent transaction amount is approximately $122.21, while the average non-fraudulent transaction amount is approximately $88.29.
 - The maximum transaction amount recorded is $25,691.16.
 - The total transaction amount across the dataset is approximately $25,162,590.01.


# Findings

- The dataset contains 284,807 transactions, of which only 492 are fraudulent, showing the data is highly imbalanced.

- Fraudulent transactions make up just 0.17% of the total, highlighting the rarity of fraud cases in real-world financial data.

- The average transaction amount for fraudulent cases is about $122.21, slightly higher than the average for non-fraudulent transactions ($88.29).

- The maximum recorded transaction amount is $25,691.16, indicating that both small and large transactions are subject to fraud risk.

- The total transaction value across the dataset is approximately $25.16 million, showing the financial scale at stake in detecting fraudulent activity.






