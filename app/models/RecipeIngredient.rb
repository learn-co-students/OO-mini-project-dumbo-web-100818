class RecipeIngredient
  @@all = []

  attr_accessor :ingredient, :recipe

  def initalize(ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe
    @@all << self

  end

  def self.all
    @@all
  end
end
