### /*1. Query: Top  objectives for a specific duration
Question:
Fetch the top  investment objectives for investments made in the "1-3 years" duration.*/

-- Select * From Finance_data--

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

   

### /*2.Investment trends for males and females
Question:Investigate investment trends for males and females, grouped by purpose and objective.*/  
  
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


### /* Query3: Investment preferences based on risk tolerance
Question:
Analyze investment preferences based on risk tolerance and display the counts for different purposes.*/

SELECT
    Factor,
    purpose,
    COUNT(*) AS count
FROM
    Finance_data
GROUP BY
    Factor, purpose
ORDER BY
    Factor, COUNT(*) DESC;  


### /* Query4:Percentage breakdown of investment objectives
Question: Calculate the percentage breakdown of each investment objective*/

SELECT 
    Objective, 
    COUNT(*) * 100 / SUM(COUNT(*)) OVER () AS percentage
FROM 
    Finance_data
GROUP BY 
    Objective;


### /* Query5: Risk Tolerance and Investment Objective:

Question: Is there a relationship between an investor's risk tolerance (Expect) and their investment objective?*/


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
