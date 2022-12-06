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


