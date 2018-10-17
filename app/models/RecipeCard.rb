class RecipeCard
  @@all = []
  attr_reader :date, :rating, :recipe, :user
  def initialize(date, rating, recipe, user)
    @date = date
    @rating = rating
    @recipe = recipe
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end
end
