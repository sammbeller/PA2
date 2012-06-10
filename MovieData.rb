#MovieData.rb


=begin

	Class representing a full set of user, movie, and review data.

	@users : an array containing User objects. The object's index corresponds to its id
	@movies : an array containing Movie objects. The object's index corresponds to its id
	@reviews : an array containing Reviews objects. Ordered based on position in data

=end

require 'Movie'

require 'Review'

require 'User'


class MovieData

	attr_reader :users, :movies, :reviews


	def initialize (folder_name, set_name = false)

		movie_file = File.new(folder_name + "/u.item", "r")

		@movies = Array.new

		@reviews = Array.new

		@users = Array.new

		populate_movies(movie_file, @movies)

		if set_name == false

			@set_file = File.new(folder_name + "/u.data", "r")

			distribute(@set_file)

		else

			@set_file = File.new(folder_name + "/" + set_name + ".base", "r")

			@test_file = File.new(folder_name + "/" + set_name + ".test", "r")

			distribute(set_file)

		end

	end



=begin

	Fixnum, Fixnum => Fixnum

	rating takes a user id number and a movie id number, looks up the user, then checks to see if that user has seen the movie of the given number
	if he/she has, the method returns that user's rating of the movie, else it returns 0

=end
	def rating(user_id, movie_id)

		if @users[user_id].rated?(movie_id)

			@users[user_id].rating(movie_id)

		else

			0

		end

	end





	def predict(user_id, movie_id)

		movies[movie_id].average

	end



=begin

	Fixnum => Array

	This method takes the id number of a user and returns an array of id numbers of the movies this user has seen

=end

	def seen(user_id)

		@users[user_id].movie_ratings.keys

	end



=begin

	Fixnum => Array

	This method takes the id number of a movie and returns an array of id numbers of those users who have seen the movie

=end

	def viewers(movie_id)

		@movies[movie_id].reviews.keys

	end



	def run_test (k)

		test_set = MovieTest.new

	end


	private
	def populate_movies(file, movies)

		cur_line = file.gets

		i = 0

		while cur_line

			@movies[i] = Movie.new(cur_line.split("|"))

			cur_line = file.gets

			i += 1

		end

	end

	def distribute(file)

		cur_line = file.gets

		i = 0

		while cur_line

			@reviews[i] = Review.new(cur_line.split("|"))

			user_id = @reviews[i].user

			movie_id = @reviews[i].movie

			if !(@users[user_id])

				@users[user_id] = User.new(@reviews[i], @movies[movie_id])

			else

				@users[user_id].load_review(@reviews[i], @movies[movie_id])

			end

			cur_line = file.gets

			i += 1

		end

	end

end




a = MovieData.new("ml-100k")

puts a.movies[23]
