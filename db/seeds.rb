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


