-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
WITH TopTeacher AS (
    SELECT teacher_id
    FROM assignments
    WHERE teacher_id IS NOT NULL
    GROUP BY teacher_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
)

SELECT COUNT(*) AS grade_A_count
FROM assignments
WHERE teacher_id = (SELECT teacher_id FROM TopTeacher)
  AND grade = 'A';

