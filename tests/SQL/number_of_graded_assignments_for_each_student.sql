-- Write query to get number of graded assignments for each state
SELECT a.state, COUNT(*) as assignment_count
FROM assignments a
WHERE a.state = 'GRADED'
GROUP BY a.state 
ORDER BY a.state;
