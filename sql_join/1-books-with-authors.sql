SELECT books.title, authors.name AS author_name
FROM books
INNER JOIN authors on author_id = authors.id
ORDER BY title ASC;
