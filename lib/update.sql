UPDATE characters
   SET species = 'Martian'
 WHERE (SELECT * FROM characters ORDER BY characters.name DESC LIMIT 1);

UPDATE chracters set species = 'Martian' WHERE id = (SELECT MAX(id) FROM characters)