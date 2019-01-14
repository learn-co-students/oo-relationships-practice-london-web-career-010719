class Client

@@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def assign_trainer(trainer, location)
    Workout.new(self, trainer, location)
  end


end
