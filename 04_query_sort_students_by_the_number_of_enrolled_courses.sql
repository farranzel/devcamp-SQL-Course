SELECT grade_student_id AS 'Student ID', student_name AS 'Student Name' , COUNT(grade_student_id) AS 'Number of Courses' FROM grades
INNER JOIN students ON grade_student_id = student_id
GROUP BY grade_student_id
ORDER BY COUNT(grade_student_id) DESC;