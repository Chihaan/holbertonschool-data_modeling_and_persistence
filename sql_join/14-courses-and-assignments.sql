SELECT c.title, a.title
FROM courses c
LEFT JOIN assignments a ON a.course_id = c.id
ORDER BY c.title ASC, a.title ASC
