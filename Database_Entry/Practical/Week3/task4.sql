-- https://leetcode.com/problems/swap-salary
UPDATE salary
SET sex = CASE
    WHEN sex = 'm' then 'f'
    ELSE 'm'
END;
