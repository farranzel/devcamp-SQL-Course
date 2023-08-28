SELECT grade_course_id AS 'CourseID', course_name AS 'Course Name', AVG(grade_grade) AS 'Average Grade'
FROM grades
INNER JOIN courses ON grade_course_id = course_id
GROUP BY grade_course_id
ORDER BY AVG(grade_grade);