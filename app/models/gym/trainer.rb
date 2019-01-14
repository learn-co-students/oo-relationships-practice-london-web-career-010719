class Trainer

  attr_accessor :name, :clients, :locations

  @@all = []

  def initialize(name)
    @name = name
    @clients = []
    @locations = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_clients
    self.all.max_by {|trainer| trainer.clients.length}
  end

  def add_location(location)
    self.locations << location
  end

end
