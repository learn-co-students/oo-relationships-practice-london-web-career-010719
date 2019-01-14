require_relative '../config/environment.rb'

#=== Test Data for AirBnb Lab ===#
chris = Guest.new("chris")
chris2 = Guest.new("chris")
gisela = Guest.new("gisela")
jeff = Guest.new("jeff")

ny_listing = Listing.new("New York", "Flatiron HQ")
london_listing = Listing.new("London", "Chez Camacho")
london_listing2 = Listing.new("London", "The Shard")

g_trip = Trip.new(gisela, ny_listing)
g2_trip = Trip.new(gisela, london_listing)
c_trip = Trip.new(chris, london_listing)
c2_trip = Trip.new(chris, london_listing2)
#=================================#

def reload
  load 'config/environment.rb'
end

Pry.start
