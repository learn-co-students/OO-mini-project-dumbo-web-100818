class User
	@@users = []

	def initialize(name)
		@name = name
		@@users.push(self)
	end

	def recipes
		RecipeCard.all.select {|recipe_card|
			recipe_card.recipe if recipe_card.user == self
		}
	end

	def allergens
		Allergen.all.select {|allergen|
			allergen.ingredient if allergen.user == self
		}
	end

	def top_three_recipes
		recipes.max_by(3) {|recipe|
			recipe.rating
		}
	end

	def most_recent_recipe
		recipes.max_by {|recipe|
			recipe.date
		}
	end

	def declare_allergen(ingredient)
		Allergen.new(self, ingredient)
	end

	def add_recipe_card(recipe, date, rating)
		RecipeCard.new(self, recipe, date, rating)
	end

	def self.all
		@@users
	end
end