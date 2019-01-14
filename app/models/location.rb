class Location
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
      workout.location == self
    }
  end

  def self.least_clients
    all.min_by {|location| location.clients.length}
    #should return the locaiton (object) which has the least clients
  end

end
