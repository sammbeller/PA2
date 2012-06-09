#User.rb


=begin

	Class represents Review objects

	@tag_arr : an array of 18 integers representing the number of times the user has watched a movie of a given genre
	@movie_ratings : a hash from movie id numbers to their corresponding rating from this user

=end



class User


	attr_reader :tag_arr, :movie_ratings





	def initialize(review, movie)

		@tag_arr = 

		@movie_ratings = {review.movie => review.rating}#int -> int

	end


=begin

	Review => Hash

	loads a review object and adds the review's movie field as a key with the review's rating field as teh associated value

=end

	def load_review(review, movie_array)

		@movie_ratings[review.movie] = review.rating

		d

	end



=begin
	
	Fixnum => Boolean

	takes a movie id number and tests to see if it is a key in the movie_ratings field

=end

	def rated?(movie_id) 

		@movie_ratings.has_key?(movie_id)

	end




	def compute_tag_proportions


	end

=begin


=end



	def get_user_rating(movie_id)

		@movie_ratings[movie_id]

	end


end