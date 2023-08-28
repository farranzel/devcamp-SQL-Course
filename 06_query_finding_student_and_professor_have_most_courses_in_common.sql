with cte as (
  select 
    student_name, 
    professor_name, 
    count(distinct course_id) counter 
  from grades
  join students on grade_student_id = student_id
  join courses on grade_course_id = course_id
  join professors on course_professor_id = professor_id
  group by 
    student_name, 
    professor_name
)

select * from cte
where cte.counter = (
  select max(counter) from cte
)