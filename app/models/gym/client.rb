class Client
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def self.all
    @@all
  end

  def assign_trainer(trainer)
    trainer.clients << self
  end

end
