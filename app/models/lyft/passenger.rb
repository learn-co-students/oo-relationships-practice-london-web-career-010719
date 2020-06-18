class Passenger
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
    rides.map {|ride| ride.driver}.uniq
  end

  def total_distance
    rides.inject(0){|sum, ride| sum + ride.distance}
  end

  def self.premium_members
    all.select {|passenger| passenger.total_distance > 100}
  end


end
