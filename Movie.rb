#Movie.rb 

class Movie


	attr_reader :tags, :title, :reviews


	def initialize (movie_array)

		@title

		@tags

		@reviews = Array.new

	end


	def load_review(review)

		@reviews << review.rating

	end


	def average

		@reviews.reduce(:+)/(@reviews.length) #sum reviews and divide by views

	end
	

end