class Trip

  attr_accessor :name, :guest, :listing

  @@all = []

  def initialize(name, guest, listing)
    @name = name
    @guest = guest
    @listing = listing
    @@all << self
  end

  def self.all
    @@all
  end

end
