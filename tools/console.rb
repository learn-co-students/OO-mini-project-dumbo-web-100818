require_relative '../config/environment.rb'

user1 = User.new("user1")
user2 = User.new("user2")
user3 = User.new("user3")

recipe1 = Recipe.new("recipe1")
recipe2 = Recipe.new("recipe2")
recipe3 = Recipe.new("recipe3")
recipe4 = Recipe.new("recipe4")
recipe5 = Recipe.new("recipe5")

ingredient0 = Ingredient.new("ingredient0")
ingredient1 = Ingredient.new("ingredient1")
ingredient2 = Ingredient.new("ingredient2")
ingredient3 = Ingredient.new("ingredient3")
ingredient4 = Ingredient.new("ingredient4")
ingredient5 = Ingredient.new("ingredient5")
ingredient6 = Ingredient.new("ingredient6")
ingredient7 = Ingredient.new("ingredient7")

ri1 = RecipeIngredient.new(recipe1, ingredient1)
ri2 = RecipeIngredient.new(recipe2, ingredient5)
ri3 = RecipeIngredient.new(recipe3, ingredient6)
ri4 = RecipeIngredient.new(recipe1, [ingredient7, ingredient0, ingredient1])
ri5 = RecipeIngredient.new(recipe5, ingredient1)

a1 = Allergen.new(user1, ingredient1)
a2 = Allergen.new(user1, ingredient5)
a3 = Allergen.new(user2, ingredient7)
a4 = Allergen.new(user3, ingredient5)

rc1 = RecipeCard.new("rc1", 4, recipe1, user1)
rc2 = RecipeCard.new("rc2", 3, recipe1, user2)
rc3 = RecipeCard.new("rc3", 2, recipe4, user3)
rc4 = RecipeCard.new("rc4", 4, recipe5, user1)
rc5 = RecipeCard.new("rc5", 5, recipe2, user1)
rc6 = RecipeCard.new("rc6", 1, recipe3, user1)




binding.pry
