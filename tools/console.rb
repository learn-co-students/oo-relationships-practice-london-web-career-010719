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
# greggs = Bakery.new("Greggs")
# pret = Bakery.new("Pret")
# indie = Bakery.new("Jeff's Independant Bakery")
#
# pastry = Ingredient.new("Pastry", 320)
# cream = Ingredient.new("Cream", 150)
# jam = Ingredient.new("jam", 50)
#
# crossiant = Dessert.new("Greggs Crossiant", greggs, [pastry])
# donught = Dessert.new("Jammy D", indie, [pastry, jam])
# indie_special = Dessert.new("Big Boy", indie, [pastry, jam, cream])

#================================#

#Test Data for Crowd Funding Lab #
chris = User.new("chris")
gisela = User.new("gisela")
jeff = User.new("jeff")

tinder_for_cats = Project.new("Tinder for Cats!",  10000, chris)
dog_swap = Project.new("Dog Swap", 5000, gisela)
hover_board = Project.new("Hover Board!!", 200000, chris)
bad_idea = Project.new("Chocolate Teapot", 10, gisela)

p1 = Pledge.new(tinder_for_cats, gisela, 2000)
p1 = Pledge.new(tinder_for_cats, gisela, 100)
p2 = Pledge.new(tinder_for_cats, jeff, 5000)
p3 = Pledge.new(dog_swap, chris, 50)
p4 = Pledge.new(hover_board, chris, 5000)
p5 = Pledge.new(hover_board, gisela, 150000)
p6 = Pledge.new(hover_board, jeff, 100000)

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
