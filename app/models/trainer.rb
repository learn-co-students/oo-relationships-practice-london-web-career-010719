class Trainer

  attr_accessor :name, :locations, :clients
  @@all = []

  def initialize(name)
    @name = name
    @locations = []
    @clients = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_location(location)
    @locations << location
  end

  def count_clients
    Client.all.select {|client| client.trainer == self}.count
  end

  def self.most_clients
    @@all.max_by {|trainer| trainer.count_clients}
  end

end
