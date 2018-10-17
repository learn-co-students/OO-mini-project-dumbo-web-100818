class Recipe
  @@all = []
  attr_accessor :users, :ingredients, :allergens
  def initialize(name, ingredients)
    @name = name
    @ingredients = ingredients
    @@all << self
  end
  def self.all
    @@all
  end
  def recipecards
    RecipeCard.all.select do |x|
      x.recipe == self
    end
  end
  def self.most_popular
    self.all.max { |recipeA, recipeB|
    recipeA.recipecards.length <=> recipeB.recipecards.length }
  end
  def add_ingredients(arr)
    arr.each do |x|
    self.ingredients << x
  end
  end
end
