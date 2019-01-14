class Trainer
@@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def clients
    Workout.all.select {|workout|
      workout.trainer == self
    }
  end

  def self.most_clients
    all.max_by {|trainer| trainer.clients.length}
    #returns trainier with most clients
  end

end
