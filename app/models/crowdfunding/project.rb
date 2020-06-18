class Project
  attr_accessor :name, :pledge_goal, :creator

  @@all = []

  def initialize (name, pledge_goal, creator)
    @name = name
    @pledge_goal = pledge_goal
    @creator = creator

    self.class.all << self
  end

  def self.all
    @@all
  end

  def pledges
    Pledge.all.select {|pledge| pledge.project == self}
  end

  def pledge_count
    pledges.length
  end

  def uniq_pledge_count
    pledges.uniq { |pledge| pledge.user}.length
  end

  def total_pledged
    pledges.inject(0) {|sum, pledge| sum + pledge.amount}
  end

  def self.no_pledges
    all.select {|project| project.pledge_count == 0}
  end

  def self.above_goal
    all.select {|project| project.total_pledged > project.pledge_goal}
  end

  def self.most_backers
    all.max_by {|project| project.uniq_pledge_count }
  end

end
