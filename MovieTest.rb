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

		mean = self.mean

		dif = 0

		@predictions.each { |x| dif += (((x[3] - x[2]).abs - mean) ** 2) }

		Math.sqrt(dif)

	end

	def rms

		a = 0

		@predictions.each { |x| a += ((x[3] - x[2]) ** 2) }

		a /= @predictions.size

		Math.sqrt(a)

	end

	def to_a

		@predictions

	end





end