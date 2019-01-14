class Pledge
  attr_accessor :project, :user, :amount

  @@all = []

  def initialize(project, user, amount)
    @project = project
    @user = user
    @amount = amount

    self.class.all << self
  end

  def self.all
    @@all
  end


end
