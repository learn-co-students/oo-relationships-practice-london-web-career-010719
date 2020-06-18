require_relative '../config/environment.rb'

#=== Seed Data for AirBnb Lab ===#
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

#=== Seed Data for Bakery Lab ===#
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

#Seed Data for Crowd Funding Lab #
# chris = User.new("chris")
# gisela = User.new("gisela")
# jeff = User.new("jeff")
#
# tinder_for_cats = Project.new("Tinder for Cats!",  10000, chris)
# dog_swap = Project.new("Dog Swap", 5000, gisela)
# hover_board = Project.new("Hover Board!!", 200000, chris)
# bad_idea = Project.new("Chocolate Teapot", 10, gisela)
#
# p1 = Pledge.new(tinder_for_cats, gisela, 2000)
# p1 = Pledge.new(tinder_for_cats, gisela, 100)
# p2 = Pledge.new(tinder_for_cats, jeff, 5000)
# p3 = Pledge.new(dog_swap, chris, 50)
# p4 = Pledge.new(hover_board, chris, 5000)
# p5 = Pledge.new(hover_board, gisela, 150000)
# p6 = Pledge.new(hover_board, jeff, 100000)

#================================#

#==== Seed Data for Gym Lab  ====#
# arnie = Trainer.new("Arnold Schwarzenegger")
# mr_motivator = Trainer.new("Mr. Motivsator")
# the_rock = Trainer.new("Dwayne Johnson")
#
# golds = Location.new("Golds Gym")
# gymbox = Location.new("Gymbox")
#
# tl1 = TrainerLocation.new(arnie, golds)
# tl2 = TrainerLocation.new(arnie, gymbox)
# tl3 = TrainerLocation.new(mr_motivator, golds)
# tl4 = TrainerLocation.new(the_rock, gymbox)
#
# chris = Client.new("chris")
# gisela = Client.new("gisela")
# jeff = Client.new("jeff")
#
# chris.assign_trainer(the_rock)
# gisela.assign_trainer(the_rock)
# jeff.assign_trainer(arnie)
#================================#

#==== Seed Data for IMDB Lab ====#
# jaws = Movie.new("Jaws (1975)")
# starwars = Movie.new("A New Hope (1977)")
# arrival = Movie.new("Arrival (2016)")
# got_movie = Movie.new("Game of Thrones")
#
# simpsons = Show.new("Simpsons")
# game_of_thrones = Show.new("Game of Thrones")
# sharpe = Show.new("Sharpe")
#
# amy = Actor.new("Amy Adams")
# peter = Actor.new("Peter Dinklidge")
# sean = Actor.new("Sean Bean")
# sharky = Actor.new("Sharky Joe")
#
# shark_old = Character.new("Sharky Old", sharky, movie: jaws )
# shark = Character.new("Sharky", sharky, movie: jaws )
# shark_killer = Character.new("Mr Kill Shark", sean, movie: jaws)
# ned_stark = Character.new("Ned Stark", sean, show: game_of_thrones)
# tyrion = Character.new("Tyrion Lannister", peter, show: game_of_thrones)
# dr_amy = Character.new("Dr Amy", amy, movie: arrival)
#================================#

#==== Seed Data for Lyft Lab ====#
chris = Passenger.new("chris")
gisela = Passenger.new("gisela")
jeff = Passenger.new("jeff")

d1 = Driver.new("John")
d2 = Driver.new("Kev")
d3 = Driver.new("Suzie")

r1 = Ride.new(chris, d1)
r2 = Ride.new(chris, d2, 93.5)
r3 = Ride.new(chris, d3, 7.9)
r4 = Ride.new(gisela, d1, 8.2)
r5 = Ride.new(jeff, d2, 4.3)
#================================#

def reload
  load 'config/environment.rb'
end

binding.pry
0