#Test.rb


require 'Movie'

require 'Review'

require 'User'

require 'MovieData'

require 'MovieTest'




the_data = MovieData.new('ml-100k')


puts the_data.rating(196, 242)

puts the_data.predict(196, 242)

puts the_data.seen(196)

puts the_data.viewers(242)

