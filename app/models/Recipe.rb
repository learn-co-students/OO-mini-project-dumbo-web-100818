class Recipe

  attr_accessor :recipe_name, :ingredients, :counter

  @@all = []
  def initialize(recipe_name)
      @recipe_name = recipe_name
      @@all << self
  end

  def self.all
    @@all
  end

  def users
    RecipeCard.all.select do |each_recipe|
      each_recipe.recipe == self
    end
  end

  def allergens
    Allergen.all.map do |allergen|
      self.ingredients.find do |each_ingredient|
        allergen
      end
    end.uniq
  end

  def add_ingredients(given_ingredients)
    @ingredients = given_ingredients
  end

  def self.most_popular
     @@all.max_by {|recipe| @@all.count(recipe)}
  end
end
