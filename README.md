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



# Data Analysis / Results
- A Query to know how many fraudulent transactions are in the dataset?

SELECT COUNT(*) AS Fraud_Count
FROM [Kaggle Creditcard Frd.]
WHERE Class = 1;

! [Transact](./Dashboard-1.PNG)

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






# Findings

- The dataset contains 284,807 transactions, of which only 492 are fraudulent, showing the data is highly imbalanced.

- Fraudulent transactions make up just 0.17% of the total, highlighting the rarity of fraud cases in real-world financial data.

- The average transaction amount for fraudulent cases is about $122.21, slightly higher than the average for non-fraudulent transactions ($88.29).

- The maximum recorded transaction amount is $25,691.16, indicating that both small and large transactions are subject to fraud risk.

- The total transaction value across the dataset is approximately $25.16 million, showing the financial scale at stake in detecting fraudulent activity.


# Recommendations

- Adopt Machine Learning Models : Since fraudulent transactions are rare (0.17%), traditional methods may miss them. Implement anomaly detection and machine learning models to improve fraud detection accuracy.

- Strengthen Monitoring of High-Value Transactions : The maximum transaction amount exceeds $25,000, so continuous monitoring of unusually large transactions is crucial to minimize potential losses.

- Implement Real-Time Detection Systems : Given that fraud can occur at any time, organizations should use real-time monitoring systems to flag suspicious transactions instantly.

- Focus on Imbalanced Data Handling : Techniques such as oversampling, undersampling, or cost-sensitive learning should be applied to address the dataset imbalance and improve             predictive model performance.

- Enhance Preventive Measures : Banks and financial institutions should combine automated detection with stronger customer verification measures (e.g., multi-factor authentication) to reduce fraud attempts.

- Ongoing Evaluation : Models and rules should be updated regularly as fraud patterns evolve, ensuring the system adapts to new attack strategies.


# Possible Limitations

- Imbalanced Dataset : Fraudulent transactions make up only 0.17% of the data, which may bias models toward predicting non-fraud cases and reduce detection accuracy.

- Limited Features : The dataset only includes Time, Amount, and Class, while most real-world fraud detection requires additional variables such as location, merchant details, and customer history.

- Anonymization of Data : Since the dataset is anonymized, important contextual information is missing, which restricts the ability to explore behavioral and demographic patterns.

- Lack of Temporal Context : The Time variable only shows seconds since the first transaction but does not reflect actual dates or seasonal effects that may influence fraud.

- Single Source of Data : The dataset originates from one card issuer in Europe (September 2013), which may limit the generalizability of findings to other regions, periods, or            financial systems.




# Conclusion

This study uses a dataset of 284,807 transactions, of which only 492 were fraudulent, to highlight the crucial problem of credit card fraud detection.  The average value of fraudulent transactions is somewhat higher than that of valid ones, and individual sums might exceed $25,000, making them a substantial financial risk even if they are uncommon.  The magnitude of the stakes in protecting financial systems is highlighted by the more than $25 million total transaction volume.

The results reaffirm that fraud detection involves addressing the stark disparity between genuine and fraudulent cases in addition to spotting anomalies.  Advanced machine learning models, real-time monitoring, and flexible protection techniques that change with fraud tactics are necessary for effective solutions.  Institutions may lower vulnerabilities, safeguard clients, and guarantee trust in digital transactions by fusing technology with robust financial controls.








