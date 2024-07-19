-- Write query to get number of assignments for each state
SELECT a.state, COUNT(*) as assignment_count
FROM assignments a
GROUP BY a.state 
ORDER BY a.state;