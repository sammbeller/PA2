#review.rb


class Review


	attr_reader :user, :movie, :rating

=begin

	Array => Review

	This method takes an array representing a review and initializes a Review object

	called with Review.new

=end

	def initialize(review_array)

		@user = review_array[0]

		@movie = review_array[1]

		@rating = review_array[3]

	end


end
