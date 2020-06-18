class Ride
  attr_accessor :name, :passenger, :driver, :distance

  @@all = []

  def initialize(passenger, driver, distance=0)
    @passenger = passenger
    @driver = driver
    @distance = distance

    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    all.inject(0){|sum, ride| sum+ride.distance}/all.length
  end
end
