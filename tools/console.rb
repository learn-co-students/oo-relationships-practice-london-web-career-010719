require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

joey = Guest.new("Joey")
darc = Guest.new("Darcey")
jas = Guest.new("Jasmine")

l1 = Listing.new("Flat 9", "London")
l2 = Listing.new("Cedar House", "Paris")
l3 = Listing.new("Highfield", "London")

trip1 = Trip.new("London Vacation 1", joey, l1)
trip2 = Trip.new("London Vacation 2", darc, l3)
trip3 = Trip.new("Paris Weekend", joey, l2)

Pry.start
