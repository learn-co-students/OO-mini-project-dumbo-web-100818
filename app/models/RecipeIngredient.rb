class RecipeIngredient
	attr_reader(:ingredient, :recipe)
	@@recipeingredients = []

	def initialize(ingredient, recipe)
		@ingredient = ingredient
		@recipe =recipe
		@@recipeingredients.push(self)
	end

	def self.all
		@@recipeingredients
	end
end