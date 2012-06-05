#review.rb


class Review


	def initialize(review_array)

		@user = review_array[0]

		@movie = review_array[1]

		@review = review_array[3]

	end


	def user

		@user

	end

	def movie

		@movie

	end

	def review

		@review

	end

end