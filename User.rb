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



	def load_review(review, movie_list)



	end



	#tests if the user has loaded a review for movie of given id
	def rated?(movie_id) 

		@movie_ratings.has_key?(movie_id)

	end




	def compute_tag_proportions


	end


	def get_user_rating(movie_id)

		@movie_ratings[movie_id]

	end


end