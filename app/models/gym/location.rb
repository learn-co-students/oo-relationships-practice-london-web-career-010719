class Location

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def trainers
    Trainer.all.select{|trainer| trainer.locations.include?(self)}
  end

  def clients
    self.trainers.map{|trainer| trainer.clients}.flatten
  end

  def self.least_clients
    self.all.min_by {|location| location.clients.length}
  end

end
