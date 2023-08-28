SELECT grade_student_id AS 'Student ID', student_name AS 'Student Name', MAX(grade_grade) AS 'Best Grade' FROM grades
INNER JOIN students ON grade_student_id = student_id
GROUP BY grade_student_id;
