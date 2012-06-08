#User.rb

class User

	def initialize(review, movie_list)

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