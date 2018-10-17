class Allergen
	attr_reader(:user, :ingredient)
	@@allergens = []

	def initialize(user, ingredient)
		@user = user
		@ingredient = ingredient
		@@allergens.push(self)
	end

	def self.all
		@@allergens
	end
end