class Workout
@@all = []

attr_accessor :client, :trainer, :location
  def self.all
    @@all
  end

  def initialize(client, trainer, location)
    @client = client
    @trainer = trainer
    @location = location
    @@all << self
  end


end
