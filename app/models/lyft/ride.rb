class Ride

  attr_accessor :distance, :driver, :passenger

  @@all = []

  def initialize(distance, driver, passenger)
    @distance = distance
    @driver = driver
    @passenger = passenger
    @@all << self
  end

  def self.all
    @@all
  end

end
