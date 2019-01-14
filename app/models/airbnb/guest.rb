class Guest
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select { |trip| trip.guest == self  }
  end

  def listings
    trips.map {|trip| trip.listing }.uniq
  end

  def trip_count
    trips.length
  end

  def self.pro_travellers
    all.select {|guest| guest.trip_count >= 1}
  end

  def self.find_all_by_name(name)
    all.select { |guest| guest.name == name  }
  end
end
