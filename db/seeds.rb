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
avoid_food_category = AvoidFoodCategory.create(name: "Dairy")
AvoidFood.create(name: "milk",avoid_food_category:)
AvoidFood.create(name: "yogurt",avoid_food_category:)
AvoidFood.create(name: "cream",avoid_food_category:)
AvoidFood.create(name: "butter",avoid_food_category:)
AvoidFood.create(name: "cheese",avoid_food_category:)
AvoidFood.create(name: "buttermilk",avoid_food_category:)
AvoidFood.create(name: "ice cream",avoid_food_category:)

avoid_food_category = AvoidFoodCategory.create(name: "Seafood")
AvoidFood.create(name: "fish",avoid_food_category:)
AvoidFood.create(name: "crab",avoid_food_category:)
AvoidFood.create(name: "crayfish",avoid_food_category:)
AvoidFood.create(name: "lobster",avoid_food_category:)
AvoidFood.create(name: "prawns",avoid_food_category:)
AvoidFood.create(name: "shrimp",avoid_food_category:)
AvoidFood.create(name: "clams",avoid_food_category:)
AvoidFood.create(name: "mussels",avoid_food_category:)
AvoidFood.create(name: "octopus",avoid_food_category:)
AvoidFood.create(name: "oyster",avoid_food_category:)
AvoidFood.create(name: "squid",avoid_food_category:)
AvoidFood.create(name: "caviar",avoid_food_category:)
AvoidFood.create(name: "shellfish",avoid_food_category:)
AvoidFood.create(name: "conch",avoid_food_category:)
AvoidFood.create(name: "scallops",avoid_food_category:)
AvoidFood.create(name: "sea Snail",avoid_food_category:)
AvoidFood.create(name: "roe",avoid_food_category:)
AvoidFood.create(name: "kamaboko",avoid_food_category:)
AvoidFood.create(name: "surimi",avoid_food_category:)


avoid_food_category = AvoidFoodCategory.create(name: "Red meat")
AvoidFood.create(name: "beef",avoid_food_category:)
AvoidFood.create(name: "lamb",avoid_food_category:)
AvoidFood.create(name: "mutton",avoid_food_category:)
AvoidFood.create(name: "pork",avoid_food_category:)
AvoidFood.create(name: "veal",avoid_food_category:)
AvoidFood.create(name: "venison",avoid_food_category:)
AvoidFood.create(name: "goat",avoid_food_category:)
