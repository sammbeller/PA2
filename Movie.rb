#Movie.rb 


=begin

	The Movie class represents an individual movie item.

	@title : contains title of movie
	@tags : contains an 18 element array of 1s and 0s representing the various
	genres of the movie
	@reviews : contains an array of all ratings of the movie


=end



class Movie

	attr_reader :tags, :title, :reviews





=begin

	Array => Movie

	takes an array representing the movie and initializes a Movie object

	called with Movie.new

=end

	def initialize (movie_array)

		@title = movie_array[1]

		@tags = movie_array[5..(movie_array.size - 1)]

		@tags.map! { |x| x.to_i }

		@reviews = Hash.new

	end



=begin

	Review, Movie => Array, Array

	adds the rating field of a Review object to the Movie's array of ratings

=end

	def load_review(review)

		@reviews [review.user => review.rating]

	end



=begin

	=> int

	returns the average rating of the Movie by summing the @reviews field and dividing it by its length

=end

	def average

		if @reviews.size != 0

			@reviews.reduce(:+)/(@reviews.length) #sum reviews and divide by views

		else

			0

		end
		
	end


end


