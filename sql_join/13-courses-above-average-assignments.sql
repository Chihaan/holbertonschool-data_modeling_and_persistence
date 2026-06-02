SELECT courses.title
FROM courses
INNER JOIN assignments ON assignments.course_id = courses.id
GROUP BY courses.title
HAVING COUNT(*) > (
    SELECT AVG(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM assignments
        GROUP BY assignments.course_id
    )
)
ORDER BY courses.title ASC;
