require_relative '../config/environment.rb'

user1 = User.new("user1")
user2 = User.new("user2")
user3 = User.new("user3")

recipe1 = Recipe.new("recipe1")
recipe2 = Recipe.new("recipe2")
recipe3 = Recipe.new("recipe3")

recipe_card1 = RecipeCard.new(user1, recipe3, '2018/10/17', 7)
recipe_card2 = RecipeCard.new(user2, recipe3, '2018/10/15', 10)
recipe_card3 = RecipeCard.new(user3, recipe2, '2018/10/18', 1)
recipe_card4 = RecipeCard.new(user2, recipe1, '2018/04/17', 2)
recipe_card5 = RecipeCard.new(user3, recipe1, '2018/02/17', 6)

ingredient1 = Ingredient.new("ingredient1")
ingredient2 = Ingredient.new("ingredient2")
ingredient3 = Ingredient.new("ingredient3")

recipe_ingredient1 = RecipeIngredient.new(ingredient1, recipe1)
recipe_ingredient2 = RecipeIngredient.new(ingredient1, recipe3)
recipe_ingredient3 = RecipeIngredient.new(ingredient2, recipe2)
recipe_ingredient4 = RecipeIngredient.new(ingredient2, recipe1)
recipe_ingredient5 = RecipeIngredient.new(ingredient3, recipe1)

allergen1 = Allergen.new(user1, ingredient1)
allergen2 = Allergen.new(user2, ingredient2)
allergen3 = Allergen.new(user3, ingredient3)
allergen4 = Allergen.new(user1, ingredient2)
allergen5 = Allergen.new(user2, ingredient2)
allergen6 = Allergen.new(user2, ingredient3)

binding.pry
