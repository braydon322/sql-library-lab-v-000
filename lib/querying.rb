def select_books_titles_and_years_in_first_series_order_by_year
 "SELECT title, year
  FROM books
  GROUP BY id
  ORDER BY year ASC
  LIMIT 3;"
end

def select_name_and_motto_of_char_with_longest_motto
 "SELECT name, motto
  AS length_of_motto
  FROM characters
  ORDER BY length(motto) DESC
  LIMIT 1;"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, count(species)
   AS species_count
   FROM characters
   GROUP BY species
   ORDER BY species_count DESC
   LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors

  "SELECT authors.name, subgenres.name
   FROM books
   INNER JOIN series
   ON books.series_id = series.id
   INNER JOIN authors
   ON authors.id = series.author_id
   INNER JOIN subgenres
   ON series.subgenre_id = subgenres.id
   GROUP BY authors.name;"

end

def select_series_title_with_most_human_characters
  "SELECT title
   FROM series
   INNER JOIN characters
   ON series.author_id = characters.author_id
   GROUP BY title
   ORDER BY title ASC
   LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, COUNT(book_id)
   AS count_value
   FROM characters
   INNER JOIN character_books
   ON character_books.character_id = characters.id
   GROUP BY name
   ORDER BY count_value DESC;"
end
