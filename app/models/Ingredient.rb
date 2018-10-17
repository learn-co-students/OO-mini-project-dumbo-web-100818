class Ingredient
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  def self.most_common_allergen
    allergen = self.all.sort_by do |ing|
      ing.allergens.count
    end
    allergen.last
  end
end
