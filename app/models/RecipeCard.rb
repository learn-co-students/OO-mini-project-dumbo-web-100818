
class RecipeCard
  attr_reader :date, :user, :recipe, :rating
  def initialize(recipe, date, rating, user)
    @@all << self
    @date = date
    @recipe = recipe
    @rating = rating
    @user = user
  end

  @@all = []

  def self.all
    @@all
  end





end
#
#
# ### `RecipeCard`
# A RecipeCard is the join between a user instance and a recipe instance.  This is a has-many-through relationship.
# Build the following methods on the RecipeCard class:
#
# #

# - `RecipeCard#user`  #attr_reader 
# should return the user to which the entry belongs
# - `RecipeCard#recipe`
# should return the recipe to which the entry belongs
