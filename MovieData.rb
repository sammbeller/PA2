#MovieData.rb


=begin

	Class representing a full set of user, movie, and review data.

	@users : an array containing User objects. The object's index corresponds to its id
	@movies : an array containing Movie objects. The object's index corresponds to its id
	@reviews : an array containing Reviews objects. Ordered based on position in data

=end



class MovieData

	attr_reader :users, :movies, :reviews


	def initialize (folder_name, set_name = false)


	end




	def rating(user_id, movie_id)

		if @users[user_id].rated?(movie_id)

			@users[user_id].rating(movie_id)

		else

			0

		end

	end





	def predict(u,m)



	end



=begin

	Fixnum => Array

	This method takes the id number of a user and returns an array of id numbers of the movies this user has seen

=end

	def movies(user_id)

		@users[user_id].movie_ratings.keys

	end



=begin

	Fixnum => Array

	This method takes the id number of a movie and returns an array of id numbers of those users who have seen the movie

=end

	def viewers(movie_id)

	end



	def run_test (k)

	end


end
