class User
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
    cards = RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
    cards.uniq
  end

  def recipes
    recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(date, rating, recipe, self)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def user_allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def allergens
    user_allergens.map do |allergen|
      allergen.ingredient
    end
  end

  def top_three_recipes
    rating = recipe_cards.sort_by do |card|
      card.rating
    end
    rating.slice!(-3, 3)
  end

  def most_recent_recipe
    recipe_cards.last.recipe
  end

  def safe_recipes
    recipes.select do |recipe|
      # binding.pry
      !recipe.ingredients.any? {|ing| self.allergens.include?(ing)}
    end
  end
end
