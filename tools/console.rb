require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

client1 = Client.new("Song")
client2 = Client.new("Yishu")
client3 = Client.new("Yang")

trainer1 = Trainer.new("Lorenz")
trainer2 = Trainer.new("Linn")

location1 = Location.new("home")
location2 = Location.new("street")

client1.assign_trainer(trainer1)
client2.assign_trainer(trainer2)
client3.assign_trainer(trainer1)

trainer1.add_location(location1)
trainer1.add_location(location2)
trainer2.add_location(location2)


binding.pry

0
