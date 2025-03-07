# Finance-Data-Analysis

The repo is created for visualization key factors on Finance data using Azure synapse through  Azure Data Storage lake, Data Factory and Data Bricks.

This repository could be used as a learning project to practice data manipulation, analysis, and visualization techniques using Sql and Python libraries like pandas, NumPy, scikit-learn, and matplotlib, plotly by PySpark Language on Synapse Studio.

![image](https://github.com/user-attachments/assets/78488eeb-e30d-4d1c-a5c4-5b4a1dae3a23)





Finance Data:
## Dataset Overview

This dataset contains  2 files with 40 records of random public data with 24 columns each. The data includes both numerical and categorical features, providing a fascinating glimpse into the investment preferences of individuals, ranging from traditional options like fixed deposits to more volatile choices like the equity market.

## Using Tools:

### -Sql
### -Python
### -Power BI

# SQL script using Azure Synapse Studio


  ## SQL Queries

### Query 1: Objective Counts for 1-3 Year Duration

```sql
SELECT
    objective,
    COUNT(*) AS count
FROM
    finance_data
WHERE
    duration = '1-3 years'
GROUP BY
    objective
ORDER BY
    count DESC;
```
![image](https://github.com/user-attachments/assets/2ca14bbb-5d49-44ae-a34d-21e02d94a223)


### Query 2: Gender, Purpose, Objective Counts

```sql
SELECT
    gender,
    purpose,
    objective,
    COUNT(*) AS count
FROM
    finance_data
GROUP BY
    gender, purpose, objective
ORDER BY
    gender, count DESC;
```
![image](https://github.com/user-attachments/assets/b2e7d296-1d7b-4602-afe8-38705f48c3d8)


### Query 3: Investor's risk tolerance (Expect) and their investment objective

```sql
SELECT
    Expect,  -- Risk tolerance
    Objective,
    COUNT(*) AS count
FROM
    Finance_data
GROUP BY
    Expect, Objective
ORDER BY
    count DESC;
```

![image](https://github.com/user-attachments/assets/bff13ae2-ae93-4635-abb6-d90ac1eb02f7)





# PySpark_Python Script using Azure Synapse Studio







![image](https://github.com/user-attachments/assets/86b3d97c-9cf3-4158-a22e-9eae5cc26ef1)

![image](https://github.com/user-attachments/assets/adfef85b-4680-4d41-af19-12a050551475)

![image](https://github.com/user-attachments/assets/1565b764-3a08-4a57-a863-98e064e37346)

![image](https://github.com/user-attachments/assets/67b9b858-65f5-4537-99ad-fe003f5f03dd)

![image](https://github.com/user-attachments/assets/a2f5688d-3cd9-4ce5-b23e-86048fad9460)

![image](https://github.com/user-attachments/assets/6ce51f9a-0e9e-4f9e-a6e6-3559c31a0bf5)






# Power BI Report



![image](https://github.com/user-attachments/assets/9ee0b771-f37d-47d6-a44e-284c086e0a46)



## Possible Use Cases

This dashboard is for:
* **Financial Advisors/Wealth Managers:** Analyzing the relationships between different features and the target variable.
* **Investment Analysts/Researchers:** Identifying the most important features contributing to risk assesment.
* **Model Comparison:** Comparing the performance of different models for Individual Investors and Financial Institutions.












