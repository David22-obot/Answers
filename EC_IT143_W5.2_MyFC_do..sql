/*****************************************************************************************************************
NAME:    EC_IT143_W5.2_MyFC_do..sql
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

-- Q1: List all players along with their last name, first name, team id, and position id.
-- Q2: Retrieve all players whose jersey number (pl_num) is greater than 50.
-- Q3: Count how many players belong to each team (t_id).
-- Q4: Find all players whose last name is ‘GARCIA’.
-- A1: Question goes on the previous line, intoduction to the answer goes on this line...

--A1
SELECT 
    pl_id,
    l_name,
    f_name,
    t_id,
    p_id
FROM MyFC.dbo.tblPlayerDim;


SELECT GETDATE() AS my_date;

--A2: 
SELECT 
    pl_id,
    pl_name,
    pl_num
FROM MyFC.dbo.tblPlayerDim
WHERE pl_num > 50;

-- A3:
SELECT 
    t_id,
    COUNT(pl_id) AS total_players
FROM MyFC.dbo.tblPlayerDim
GROUP BY t_id;


--A4:
SELECT 
    pl_id,
    l_name,
    f_name,
    pl_name,
    pl_num
FROM MyFC.dbo.tblPlayerDim
WHERE l_name = 'GARCIA';
