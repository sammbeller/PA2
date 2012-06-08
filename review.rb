#review.rb


class Review


	attr_reader :user, :movie, :rating


	def initialize(review_array)

		@user = review_array[0]

		@movie = review_array[1]

		@rating = review_array[3]

	end


end
