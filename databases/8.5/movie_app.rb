# Movie App: The Ultimate App the Store and Rate Movies You've Watched...

# Require gems
require 'sqlite3'
require 'faker'

# Create the SQLite3 Database
db = SQLite3::Database.new("movie.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS movie(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    movie_length INT,
    director VARCHAR(255),
    year_released INT,
    watched BOOLEAN,
    rating INT,
    favorites BOOLEAN
  )
SQL

# Create a Table for Movies
db.execute(create_table_cmd)

# Create a Method to Add a Movie
def add_movie(db, name, movie_length, director, year_released, watched, rating, favorites)
	db.execute("INSERT INTO movie (name, movie_length, director, year_released, watched, rating, favorites) VALUES (?, ?, ?, ?, ?, ?, ?)", [name, movie_length, director, year_released, watched, rating, favorites])
end

# Create a Method to Delete a Movie
def delete_movie(db, id)
	db.execute("DELETE FROM movie WHERE id=?", [id])
end

# Create a Method to Update Name
def update_name(db, name, id)
	db.execute("UPDATE movie SET name=? WHERE id=?", [name, id])
end

# Create a method to Update Rating
def update_rating(db, rating, id)
	db.execute("UPDATE movie SET rating=? WHERE id=?", [rating, id])
end

# Create a method to Update Watched
def update_watched(db, watched, id)
	db.execute("UPDATE movie SET watched=? WHERE id=?", [watched, id])
end

# Create a Method to Update Favorites
def update_favorites(db, favorites, id)
	db.execute("UPDATE movie SET favorites=? WHERE id=?", [favorites, id])
end
# Create a Method to print Register
def print_movie_register(db)
	movie_register = db.execute("SELECT * FROM movie")
	movie_register.each do |movie|
		puts movie
	end
end

# Driver code to test methods
# add_movie(db, "X-men", 100, "me", 2016, "true", 5, "true")
# add_movie(db, "Umar's DBC Adventures", 100000000, "Umar", "false" 5, "true")
# add_movie(db, "Captain America", 120, "Joss Whedon, 2016, "true", 5, "true")
# update_watched(db, "false", 3)
# delete_movie(db, 3)


#User Interface
#Create Loop to Allow User To Input
#AI is very Friendly and Hip

puts "My friend. You're about to experience something amazing, unbelieveable, perhaps like the movie that you are about to add or edit."
puts "Welcome to Movie App 1.0. We never needed an update. Let's get started!" 

loop do
puts "Would you like to add, update, or delete a movie? When done, just type chill and you're on way... Be easy my friend."

response = gets.chomp.downcase

	break if response == "chill"

	if response == "add"
		puts "What is the name of the movie?"
		name = gets.chomp
		puts "What is the length of this movie?"
		movie_length = gets.chomp.to_i
		puts "Who is the director?"
		director = gets.chomp.downcase
		puts "What year was this movie released?"
		year_released = gets.chomp.to_i
		puts "Have you watched this movie?"
		answer = gets.chomp.downcase
			if answer == "no"
				watched = "false"
			else
				watched = "true"
			end
		puts "What is your rating for this movie (1-5)?"
		rating = gets.chomp.to_i
		puts "Is it one of your favorites?"
		second_answer = gets.chomp.downcase
			if second_answer == "no"
				favorites = "false"
			else
				favorites = "true"
			end
		add_movie(db, name, movie_length, director, year_released, watched, rating, favorites)
	elsif response == "update"
		puts "What movie would you like to update? (Enter id number)"
		id = gets.chomp.to_i
		puts "What would you like to update about this movie (name, watched, rating, favorites)?"
		input = gets.chomp.downcase
			if input == "name"
				puts "What is the new name for this movie?"
				name = gets.chomp
				name.split.map(&:capitalize).join(" ")
				update_name(db, name, id)
			elsif input == "rating"
				puts "What is the new rating for this movie?"
				rating = gets.chomp.to_i
				update_rating(db, rating, id)
			elsif input == "watched"
				puts "Have you watched this movie?"
				finished = gets.chomp.downcase
					if finished == "no"
						watched = "false"
					else
						watched = "true"
					end
				update_watched(db, watched, id)
			elsif input == "favorites"
				puts "Shall I add this to your favorites?"
				third_answer = gets.chomp.to_i
					if third_answer == "no"
						favorites = "false"
					else
						favorites = "true"
					end
				update_favorites(db, favorites, id)
			end
	elsif response == "delete"
		puts "What movie would you like to delete? (Enter id number)"
		id = gets.chomp.to_i
		delete_movie(db, id) 
	end
	puts "Here is your current Movie Register"
	print_movie_register(db)
end

# If I had more time, given it was a 100+ hour work week, I would have added additional tables 
# which would have sorted the Movies by Categories and also by Ratings.
# Also would have cleaned up the prompts to make it more intuitive and better able to handle random requests by Users.