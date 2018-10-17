require_relative '../config/environment.rb'

# Users -- takes a name
john = User.new("John")
mike = User.new("Mike")
alex = User.new("Alex")
peter = User.new("Peter")

#Recipe -- takes a recipe name
cake = Recipe.new("Cake")
pie = Recipe.new("Pie")
cookie = Recipe.new("Cookie")
bread = Recipe.new("Bread")

#Recipe Card -- takes a user & recipe
john.add_recipe_card(cake,5)
mike.add_recipe_card(cake,6)
peter.add_recipe_card(pie,4)
alex.add_recipe_card(bread,7)
john.add_recipe_card(pie,4)
peter.add_recipe_card(cookie,5)

#Ingredients -- takes ingredient_name
eggs = Ingredient.new("Eggs")
salt = Ingredient.new("Salt")
sugar = Ingredient.new("Sugar")
oil = Ingredient.new("Oil")

#Allergen -- takes a ingredient
john.declare_allergen(eggs)
mike.declare_allergen(oil)
peter.declare_allergen(sugar)
john.declare_allergen(oil)

#RecipeIngredient -- takes a ingredient & recipe
RecipeIngredient.new(eggs, cake)
RecipeIngredient.new(sugar, cookie)
RecipeIngredient.new(salt, bread)
RecipeIngredient.new(oil, pie)

#Recipe Add Ingredient array
ing_arr_one = ["eggs","oil","tomato","spices","peaches"]
ing_arr_two = ["milk","food","salt","spices","flour"]
ing_arr_three = ["juice","oil","eggs","spices","salt"]
ing_arr_four = ["grape","vinegar","splenda","flour"]

# Recipe add ingredient array
cake.add_ingredients(ing_arr_one)
cookie.add_ingredients(ing_arr_two)
bread.add_ingredients(ing_arr_three)
pie.add_ingredients(ing_arr_four)












binding.pry
