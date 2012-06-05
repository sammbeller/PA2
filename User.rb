#User.rb

class User

	def initialize

		@tag_arr = Array.new(18)

		@movie_ratings = Hash.new

	end


	def compute_tag_proportions


	end


	def get_user_rating(movie_id)

		@movie_ratings[movie_id]

	end


end