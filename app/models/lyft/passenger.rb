class Passenger

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
    self.rides.map {|ride| ride.driver}.uniq
  end

  def total_distance
    self.rides.inject(0){|sum, ride| sum += ride.distance}
  end

  def self.premium_members
    self.all.select {|passenger| passenger.total_distance > 100}
  end

end
