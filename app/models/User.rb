class User
@@all = []
  attr_accessor :recipes, :allergens, :allery
  def initialize(name)
    @name = name
    @allergens = []
    @allery = ""
    @@all << self
  end
  def self.all
  @@all
  end
  def recipecards
    RecipeCard.all.select do |x|
      x.user == self
    end
  end
  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, date, self, rating)
  end
  def declare_allergen(ingredient)
    self.allergens << Allergen.new(self, ingredient)
    @allery << "#{ingredient} "
  end
  def top_three_recipes
    recipecards.max(3) {|rec1, rec2| rec1.rating <=> rec2.rating}
  end
  def most_recent_recipe
    recipecards[-1]
  end

  def safe_recipes # unfinished method!!
  recipes = Recipe.all.select do |x|
    !x.ingredients.include?(self.allery)
   end
  end
end
