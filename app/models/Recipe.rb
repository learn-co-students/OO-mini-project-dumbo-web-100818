class Recipe
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select do |card|
      card.recipe == self
    end
  end

  def self.most_popular
    most = @@all.sort_by do |recipe|
      recipe.recipe_cards.count
    end
    most[-1]
  end

  def users
    recipe_cards.map do |card|
      card.user
    end
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |ri|
      ri.recipe == self
    end
  end

  def ingredients
    recipe_ingredients.map do |ri|
      ri.ingredient
    end
  end

  def allergens
    allergy = Allergen.all.select do |allergen|
      ingredients.include?(allergen.ingredient)
    end
    allergy.map do |allergy|
      allergy.ingredient
    end
  end

  def add_ingredients(ingredients)
    ingredients.each do |ing|
      RecipeIngredient.new(self, ing)
    end 
  end
end
