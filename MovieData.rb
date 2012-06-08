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





	def predict(u,m)



	end

	def movies(u)

	end

	def viewers(movie_id)

	end

	def run_test (k)

	end


end
