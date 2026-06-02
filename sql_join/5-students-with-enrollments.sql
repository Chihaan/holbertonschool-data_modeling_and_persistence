SELECT students.name AS student_name
from students
WHERE students.id IN (
    SELECT enrollments.student_id
    FROM enrollments
)
ORDER BY student_name ASC;
