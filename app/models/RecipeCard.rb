class RecipeCard

  attr_accessor :user, :recipe, :date, :rating
  @@all = []
  def initialize(user, recipe, rating= 0, date= Time.now)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end





end
