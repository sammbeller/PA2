#User.rb


=begin

	Class represents User objects

	@tags : an array of 18 integers representing the number of times the user has watched a movie of a given genre
	@proportions : 
	@reviews : a hash from movie id numbers to their corresponding rating from this user

=end



class User


	attr_reader :tags, :reviews, :proportions





	def initialize(review, movie)

		@tags = movie.tags

		@reviews = {review.movie => review.rating}

		@proportions = Array.new(18)

	end


=begin

	Review => Hash

	loads a review object and adds the review's movie field as a key with the review's rating field as teh associated value

=end

	def load_review(review, movie)

		@reviews[review.movie] = review.rating

		@tags = @tags.zip(movie.tags).map {|x| x.reduce(:+) }

	end



=begin
	
	Fixnum => Boolean

	takes a movie id number and tests to see if it is a key in the movie_ratings field

=end

	def rated?(movie_id) 

		@reviews.has_key?(movie_id)

	end




	def compute_tag_proportions

		a = tags.reduce(:+)

		@proportions = tags.map { |x| x/a.to_f }


	end

=begin


=end



	def get_user_rating(movie_id)

		@reviews[movie_id]

	end

	def compare(user)
 c.zip(d).map { |x| x.reduce(:-).abs }
	end

end