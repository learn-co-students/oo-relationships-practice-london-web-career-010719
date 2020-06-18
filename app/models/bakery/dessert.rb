class Dessert
  attr_accessor :name, :bakery, :ingredients

  @@all = []

  def initialize(name, bakery, ingredients)
    @name = name
    @bakery = bakery
    @ingredients = ingredients

    self.class.all << self
  end

  def self.all
    @@all
  end

  def calories
    ingredients.inject(0) {|sum, ingredient| sum + ingredient.calorie_count}
  end
end
