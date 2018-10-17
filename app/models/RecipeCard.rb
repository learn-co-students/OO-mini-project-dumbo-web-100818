class RecipeCard
	attr_reader(:user, :recipe, :date, :rating)
	@@recipecards = []

	def initialize(user, recipe, date, rating)
		@user = user
		@recipe = recipe
		@date = date
		@rating = rating
		@@recipecards.push(self)
	end

	def self.all
		@@recipecards
	end
end