class Ingredient
	attr_reader(:name)
	@@ingredients = []

	def initialize(name)
		@name = name
	end

	def allergens
		Allergen.all.select {|allergen|
			allergen.ingredient == self
		}
	end

	def self.most_common_allergen
		@@ingredients.max_by {|ingredient|
			ingredient.allergens.count
		}
	end

	def self.all
		@@ingredients
	end
end
