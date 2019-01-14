class Driver

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
    Ride.all.select {|ride| ride.driver == self}
  end

  def passengers
    self.rides.map {|ride| ride.passenger}.uniq
  end

  def self.mileage_cap(miles)
    self.all.select {|driver| driver.rides.inject(0){|x,ride| x += ride.distance} > miles}
  end

end
