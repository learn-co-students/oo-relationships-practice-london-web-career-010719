class Bakery
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def self.all
    @@all
  end

  def desserts
    Dessert.all.select {|dessert| dessert.bakery == self}
  end

  def ingredients
    desserts.map {|dessert| dessert.ingredients}.flatten.uniq
  end

  def shopping_list
    ingredients.map {|ingredient| ingredient.name}.uniq
  end

  def average_calories
    desserts.inject(0) {|sum, dessert| sum + dessert.calories} / desserts.length
  end
end
