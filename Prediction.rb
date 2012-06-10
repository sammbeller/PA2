#Prediction.rb

class Prediction

	attr_reader :user, :movie, :rating, :prediction


	def initialize(user, movie, rating, prediction)

		@user = user

		@movie = movie

		@rating = rating

		@prediction = prediction

	end

	def to_a

		[@user, @movie, @rating, @prediction]

	end

	def difference

		(rating - prediction).abs

	end