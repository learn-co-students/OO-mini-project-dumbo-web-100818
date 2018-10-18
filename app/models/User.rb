
class User
  attr_reader :name
  attr_writer
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    Recipe.all
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, date, rating, self)
  end

  def top_three_recipes
    RecipeCard.all.max_by(3) {|card| card.rating}
  end



end
#max_by(2){|  |  }

### `User`
# Build the following methods on the User class
# - `User#recipes`
# should return all of the recipes this user has recipe cards for
# - `User#add_recipe_card`
# should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
# - `User#declare_allergen`
# should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient
# - `User#allergens`
# should return all of the ingredients this user is allergic to


# - `User#top_three_recipes`
# should return the top three highest rated recipes for this user. ####
