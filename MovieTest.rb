#MovieTest.rb

class MovieTest

	attr_reader :predictions

	def initialize(prediction)

		@predictions = Array.new(1, prediction)

	end

	def load(prediction)

		@predictions << prediction

	end

	def mean

		a = 0

		@predictions.each { |x| a += (x[3] - x[2]).abs}

		a / @predictions.size

	end

	def stddev

	end

	def rms

	end

	def to_a


	end





end