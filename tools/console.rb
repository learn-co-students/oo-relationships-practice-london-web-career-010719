require_relative '../config/environment.rb'

#=== Test Data for AirBnb Lab ===#
# chris = Guest.new("chris")
# chris2 = Guest.new("chris")
# gisela = Guest.new("gisela")
# jeff = Guest.new("jeff")
#
# ny_listing = Listing.new("New York", "Flatiron HQ")
# london_listing = Listing.new("London", "Chez Camacho")
# london_listing2 = Listing.new("London", "The Shard")
#
# g_trip = Trip.new(gisela, ny_listing)
# g2_trip = Trip.new(gisela, london_listing)
# c_trip = Trip.new(chris, london_listing)
# c2_trip = Trip.new(chris, london_listing2)
#================================#

#=== Test Data for Bakery Lab ===#
greggs = Bakery.new("Greggs")
pret = Bakery.new("Pret")
indie = Bakery.new("Jeff's Independant Bakery")

pastry = Ingredient.new("Pastry", 320)
cream = Ingredient.new("Cream", 150)
jam = Ingredient.new("jam", 50)

crossiant = Dessert.new("Greggs Crossiant", greggs, [pastry])
donught = Dessert.new("Jammy D", indie, [pastry, jam])
indie_special = Dessert.new("Big Boy", indie, [pastry, jam, cream])

#================================#

#Test Data for Crowd Funding Lab #
#================================#

#==== Test Data for Gym Lab  ====#
#================================#

#==== Test Data for IMDB Lab ====#
#================================#

#==== Test Data for Lyft Lab ====#
#================================#

def reload
  load 'config/environment.rb'
end

Pry.start
