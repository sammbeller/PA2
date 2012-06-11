#Test.rb


require 'Movie'

require 'Review'

require 'User'

require 'MovieData'

require 'MovieTest'




the_data = MovieData.new('ml-100k')


the_data.rating(100, 100)

the_data.predict(100, 100)

the_data.seen(100)

the_data.viewers(100)

