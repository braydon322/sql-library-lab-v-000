UPDATE characters 
   SET species = 'Martian' 
 WHERE (SELECT * FROM characters ORDER BY characters.name DESC LIMIT 1;);