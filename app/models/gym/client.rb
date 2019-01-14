class Client

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def assign_trainer(new_trainer)
    self.trainer.clients.delete(self) if self.trainer
    new_trainer.clients << self
  end

  def trainer
    Trainer.all.find{|trainer| trainer.clients.include?(self)}
  end

end
