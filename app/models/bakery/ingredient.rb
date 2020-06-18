class Ingredient
  attr_accessor :name, :calorie_count

  @@all = []

  def initialize(name, calorie_count)
    @name = name
    @calorie_count = calorie_count

    self.class.all << self
  end

  def self.all
    @@all
  end

  def desserts
    Dessert.all.select {|dessert| dessert.ingredients.include?(self)}
  end

  def bakeries
    Bakery.all.select { |bakery| bakery.ingredients.include?(self)  }
  end

  def self.find_all_by_name(name)
    all.select {|ingredient| ingredient.name.downcase.include?(name.downcase)}
  end
end
