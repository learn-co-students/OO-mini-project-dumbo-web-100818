class Recipe
	@@recipes = []

	def initialize(name)
		@name = name
		@@recipes.push(self)
	end

	def users
		RecipeCard.all.map {|recipecard|
			recipecard.user if recipecard.recipe == self
		}.compact.uniq
	end

	def ingredients
		RecipeIngredient.all.map {|recipeingredient|
			recipeingredient.ingredient if recipeingredient.recipe == self
		}.compact.uniq
	end

	def allergens
		ingredients.select {|ingredient|
			ingredient.allergens.count > 0
		}
	end

	def add_ingredients
		ingredients.each {|ingredient|
			RecipeIngredient.new(ingredient, self)
		}
	end

	def self.most_popular
		@@recipes.max_by {|recipe|
			recipe.users.count
		}
	end

	def self.all
		@@recipes
	end
end