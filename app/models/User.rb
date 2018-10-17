class User

  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, rating=0, date=Time.now)
    RecipeCard.new(self,recipe,rating,date)
  end

  def declare_allergen(ingredient_given)
    Allergen.new(self, ingredient_given)
  end

  def my_data
    RecipeCard.all.select { |each_card| each_card.user == self}
  end

  def allergens
    Allergen.all.select {|allergen| allergen.user == self}
  end

  def most_recent_recipe
    time_arr = my_data.map do |each_card|
      each_card.date
    end
    compare_time = time_arr[0]
    time_arr.each do |each_time|
      if compare_time < each_time
          compare_time = each_time
      end
    end
    compare_time
  end


end
