/*****************************************************************************************************************
NAME:    EC_IT143_W5.2_Simpsons_do..sql
PURPOSE: Answering Questions From Abigail Somina Alfred

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/07/2025   David Obot       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

-- Q1: Retrieve all records from the table dbo.FBS_Viza_Costmo.
-- Q2: Count how many total records exist in dbo.FBS_Viza_Costmo.
-- Q3: List all rows where the cost amount is greater than 100.
-- Q4: Group the data by a category column and count the number of items in each category.
-- A1: Question goes on the previous line, intoduction to the answer goes on this line...

--A1
SELECT 
    pl_id,
    l_name,
    f_name,
    t_id,
    p_id
FROM MyFC.dbo.tblPlayerDim SELECT *
FROM Simpsons.dbo.FBS_Viza_Costmo;



SELECT GETDATE() AS my_date;

--A2: 
SELECT 
    COUNT(*) AS total_records
FROM Simpsons.dbo.FBS_Viza_Costmo;


-- A3:
SELECT *
FROM Simpsons.dbo.FBS_Viza_Costmo
WHERE Credit > 100;



--A4:
SELECT 
    Debit,
    COUNT(*) AS total_items
FROM Simpsons.dbo.FBS_Viza_Costmo
GROUP BY Debit;

