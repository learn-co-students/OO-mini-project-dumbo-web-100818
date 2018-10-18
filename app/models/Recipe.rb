### `Recipe`
# Build the following methods on the Recipe class
#


# - `Recipe.most_popular`
# should return the recipe instance with the highest number of users
# (the recipe that has the most recipe cards)
# - `Recipe#users`
# should return the user instances who have recipe cards with this recipe
# - `Recipe#ingredients`
# should return all of the ingredients in this recipe
# - `Recipe#allergens`
# should return all of the ingredients in this recipe that are allergens
# - `Recipe#add_ingredients`
# should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe



class Recipe
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []
  def self.all
    @@all
  end
  #
  def self.most_popular
    recipes = RecipeCard.all.map {|card| card.recipe}
    recipes.max_by(1){|recipe| recipes.count(recipe)}
    # binding.pry

    #RecipeCard.all.max_by(1) {|card| card.recipe}
  end
# binding.pry
def top_three_recipes
  RecipeCard.all.max_by(3) {|card| card.rating}
end

end
