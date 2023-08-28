SELECT 
  course_professor_id AS 'Professor ID',
  professor_name AS 'Professor Name', 
  grade_course_id AS 'Course ID', 
  course_name AS 'Course Name',
  AVG(grade_grade) AS 'Average Grade'
FROM grades
INNER JOIN courses ON grade_course_id = course_id
INNER JOIN professors ON professor_id = course_professor_id
GROUP BY course_professor_id, grade_course_id;