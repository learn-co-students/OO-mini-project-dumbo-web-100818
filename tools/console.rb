require_relative '../config/environment.rb'



ken = User.new("Ken")
irvin = User.new("Irvin")

burger = Recipe.new("burger")
fries = Recipe.new("fries")
bbq = Recipe.new("bbq")


b1 = RecipeCard.new(burger, "oct17", 9, ken)
b2 = RecipeCard.new(fries, "oct18", 10, irvin)
b3 = RecipeCard.new(burger, "oct19", 8, ken)
b4 = RecipeCard.new(bbq, "oct20", 6, irvin)

ken.top_three_recipes

binding.pry
