#MovieData.rb

class MovieData

	def initialize (folder_name, set_name = false)

	end




	def rating(user_id, movie_id)

		if @users[user_id].rated?(movie_id)

			@users[user_id].rating(movie_id)

		else

			0

		end

	end





	def predict

	end

	def movies

	end

	def viewers

	end

	def run_test (k)

	end


end
