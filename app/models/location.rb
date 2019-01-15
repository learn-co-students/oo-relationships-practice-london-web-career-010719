class Location

  attr_accessor :name, :address
  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def count_clients
    Client.all.select{|client| client.locations.include?(self)}.count
  end

  def self.least_clients
    @@all.min_by {|location| location.count_clients}
  end


end
