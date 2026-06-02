SELECT i.name
FROM instructors i
INNER JOIN courses c ON c.instructor_id = i.id
INNER JOIN registrations r ON r.course_id = c.id
GROUP BY i.name
ORDER BY i.name ASC;
