class Client

  attr_accessor :name, :trainer, :locations
  @@all = []

  def initialize(name)
    @name = name
    @locations = []
    @@all << self
  end

  def assign_trainer (trainer)
    @trainer =  trainer
    @locations = trainer.locations
  end

  def self.all
    @@all
  end

end
