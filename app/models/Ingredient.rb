class Ingredient
  @@all = []
  attr_accessor

  def initialize(name)
    @name = name
    @@all << self
  end

  def allergens
    Allergen.all.select do |x|
      x.ingredient == self
    end
  end

  def self.most_common_allergen
  self.all.max do |ing1, ing2|
    ing1.allergens.count <=> ing2.allergens.count
  end
  end

  def self.all
    @@all
  end
end
