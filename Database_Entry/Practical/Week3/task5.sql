-- https://www.hackerrank.com/challenges/placements/problem
SELECT s.name FROM students AS s
INNER JOIN friends AS f ON s.id = f.id
INNER JOIN packages AS p1 ON p1.id = s.id 
INNER JOIN packages AS p2 ON p2.id = f.friend_id WHERE (p2.salary-p1.salary) > 0
ORDER BY p2.salary;