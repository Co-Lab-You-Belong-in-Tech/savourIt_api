# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# HUNGRY
Hunger.destroy_all
Hunger.create(value: "Very hungry")
Hunger.create(value: "Not very hungry")
Hunger.create(value: "Not hungry")

# CATEGORY
Category.destroy_all

# RESTAURANT
Restaurant.destroy_all

# IMAGER
Imager.destroy_all

# UBER
Uber.destroy_all

# MEAL
Meal.destroy_all

# ALLERGENS
Allergen.destroy_all
a1 = Allergen.create(name: "Cereals containing gluten")
a2 = Allergen.create(name: "Crustaceans")
a3 = Allergen.create(name: "Eggs")
a4 = Allergen.create(name: "Fish")
a5 = Allergen.create(name: "Peanuts")
a6 = Allergen.create(name: "Soybeans")
a7 = Allergen.create(name: "Milk")
a8 = Allergen.create(name: "Nuts")
a9 = Allergen.create(name: "Celery")
a10 = Allergen.create(name: "Mustard")
a11 = Allergen.create(name: "Sesame seeds")
a12 = Allergen.create(name: "Sulphur dioxide and sulphites")
a13 = Allergen.create(name: "Lupin")
a14 = Allergen.create(name: "Molluscs")


# INGREDIENT
Ingredient.create(name: "wheat", allergen: a1)
Ingredient.create(name: "spelt", allergen: a1)
Ingredient.create(name: "khorasan", allergen: a1)
Ingredient.create(name: "rye", allergen: a1)
Ingredient.create(name: "barley", allergen: a1)
Ingredient.create(name: "oats", allergen: a1)
Ingredient.create(name: "rye", allergen: a1)
Ingredient.create(name: "crustaceans", allergen: a2)
Ingredient.create(name: "eggs", allergen: a3)
Ingredient.create(name: "egg", allergen: a3)
Ingredient.create(name: "fish", allergen: a4)
Ingredient.create(name: "peanuts", allergen: a5)
Ingredient.create(name: "peanut", allergen: a5)
Ingredient.create(name: "soybeans", allergen: a6)
Ingredient.create(name: "soybean", allergen: a6)

Ingredient.create(name: "milk", allergen: a7)
Ingredient.create(name: "cheese",allergen: a7)
Ingredient.create(name: "yogurt",allergen: a7)
Ingredient.create(name: "cream",allergen: a7)
Ingredient.create(name: "butter",allergen: a7)
Ingredient.create(name: "buttermilk",allergen: a7)
Ingredient.create(name: "cream",allergen: a7)

Ingredient.create(name: "almonds", allergen: a8)
Ingredient.create(name: "almond", allergen: a8)
Ingredient.create(name: "hazelnuts", allergen: a8)
Ingredient.create(name: "hazelnut", allergen: a8)
Ingredient.create(name: "walnuts", allergen: a8)
Ingredient.create(name: "walnut", allergen: a8)
Ingredient.create(name: "cashews", allergen: a8)
Ingredient.create(name: "cashew", allergen: a8)
Ingredient.create(name: "pecan", allergen: a8)
Ingredient.create(name: "brazil", allergen: a8)
Ingredient.create(name: "pistachio", allergen: a8)
Ingredient.create(name: "macadamia", allergen: a8)
Ingredient.create(name: "queensland", allergen: a8)
Ingredient.create(name: "celery", allergen: a9)
Ingredient.create(name: "mustard", allergen: a10)
Ingredient.create(name: "sesame", allergen: a11)
Ingredient.create(name: "sulphur", allergen: a12)
Ingredient.create(name: "dioxide", allergen: a12)
Ingredient.create(name: "sulphites", allergen: a12)
Ingredient.create(name: "lupin", allergen: a13)
Ingredient.create(name: "molluscs", allergen: a14)
Ingredient.create(name: "mollusc", allergen: a14)




# AvoidFoodCategory and AvoidFood
AvoidFoodCategory.destroy_all
CategoryIngredient.destroy_all
Ingredient.destroy_all
category_ingredient = CategoryIngredient.create(name: "Dairy")
Ingredient.create(name: "milk",category_ingredient:)
Ingredient.create(name: "yogurt",category_ingredient:)
Ingredient.create(name: "cream",category_ingredient:)
Ingredient.create(name: "butter",category_ingredient:)
Ingredient.create(name: "cheese",category_ingredient:)
Ingredient.create(name: "buttermilk",category_ingredient:)
Ingredient.create(name: "ice cream",category_ingredient:)

category_ingredient = CategoryIngredient.create(name: "Seafood")

Ingredient.create(name: "fish",category_ingredient:)
Ingredient.create(name: "crab",category_ingredient:)
Ingredient.create(name: "crayfish",category_ingredient:)
Ingredient.create(name: "lobster",category_ingredient:)
Ingredient.create(name: "prawns",category_ingredient:)
Ingredient.create(name: "shrimp",category_ingredient:)
Ingredient.create(name: "clams",category_ingredient:)
Ingredient.create(name: "mussels",category_ingredient:)
Ingredient.create(name: "octopus",category_ingredient:)
Ingredient.create(name: "oyster",category_ingredient:)
Ingredient.create(name: "squid",category_ingredient:)
Ingredient.create(name: "caviar",category_ingredient:)
Ingredient.create(name: "shellfish",category_ingredient:)
Ingredient.create(name: "conch",category_ingredient:)
Ingredient.create(name: "scallops",category_ingredient:)
Ingredient.create(name: "sea Snail",category_ingredient:)
Ingredient.create(name: "roe",category_ingredient:)
Ingredient.create(name: "kamaboko",category_ingredient:)
Ingredient.create(name: "surimi",category_ingredient:)


category_ingredient = CategoryIngredient.create(name: "Red meat")

Ingredient.create(name: "beef",category_ingredient:)
Ingredient.create(name: "lamb",category_ingredient:)
Ingredient.create(name: "mutton",category_ingredient:)
Ingredient.create(name: "pork",category_ingredient:)
Ingredient.create(name: "veal",category_ingredient:)
Ingredient.create(name: "venison",category_ingredient:)
Ingredient.create(name: "goat",category_ingredient:)
