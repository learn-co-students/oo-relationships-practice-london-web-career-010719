class Trainer
  attr_accessor :name, :clients

  @@all = []

  def initialize(name)
    @name = name
    @clients = []

    self.class.all << self
  end

  def self.all
    @@all
  end

  def client_count
    clients.length
  end

  def self.most_clients
    all.max_by {|trainer| trainer.client_count}
  end

end
