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

joey1 = Passenger.new("Joey")
darc1 = Passenger.new("Darcey")
jas1 = Passenger.new("Jasmine")

jay = Driver.new("Jay")
dave = Driver.new("Dave")
julian = Driver.new("Julian")

ride1 = Ride.new(33.7, jay, joey)
ride2 = Ride.new(70.5, jay, darc)
ride3 = Ride.new(3.4, jay, darc)
ride4 = Ride.new(17.0, dave, joey)
ride5 = Ride.new(39.4, dave, jas)
ride6 = Ride.new(21.1, dave, darc)
ride7 = Ride.new(100.1, julian, joey)
ride8 = Ride.new(55.5, julian, jas)

trainer1 = Trainer.new("BIG SAM")
trainer2 = Trainer.new("BIG JOHN")

location1 = Location.new("London")
location2 = Location.new("Milton Keynes")

client1 = Client.new("Joey")
client2 = Client.new("Darcey")

trainer1.add_location(location1)
trainer1.add_location(location2)
trainer2.add_location(location2)
client1.assign_trainer(trainer2)
client2.assign_trainer(trainer2)

Pry.start
