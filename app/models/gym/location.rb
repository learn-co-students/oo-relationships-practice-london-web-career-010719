class Location
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def self.all
    @@all
  end

  def trainers
    TrainerLocation.all.select {|tl| tl.location == self}.map{|tl| tl.trainer}
  end

  def clients
    trainers.map {|trainer| trainer.clients}.flatten.uniq
  end

  #in the interest of simplicoty this is probibalistic - the gym with the leasy AVAILBLE
  #clients who could go there via their relatiopnship with a trainer
  def self.least_clients
    all.min_by{ |location| location.clients.length}
  end

end
