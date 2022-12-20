# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_17_161317) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "avoid_food_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "avoid_foods", force: :cascade do |t|
    t.string "name"
    t.bigint "avoid_food_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["avoid_food_category_id"], name: "index_avoid_foods_on_avoid_food_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "hunger_id"
    t.index ["hunger_id"], name: "index_categories_on_hunger_id"
  end

  create_table "category_ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_meals", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_category_meals_on_category_id"
    t.index ["meal_id"], name: "index_category_meals_on_meal_id"
  end

  create_table "hungers", force: :cascade do |t|
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imagers", force: :cascade do |t|
    t.string "link", null: false
    t.bigint "restaurant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_imagers_on_restaurant_id"
  end

  create_table "ingredient_meals", force: :cascade do |t|
    t.bigint "meal_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_ingredient_meals_on_ingredient_id"
    t.index ["meal_id"], name: "index_ingredient_meals_on_meal_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.bigint "category_ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_ingredient_id"], name: "index_ingredients_on_category_ingredient_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "title", null: false
    t.float "price", null: false
    t.text "description"
    t.text "image_url"
    t.string "uber_url"
    t.boolean "desactivate", default: false
    t.bigint "restaurant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_meals_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.string "street_address", null: false
    t.string "city", null: false
    t.string "country", null: false
    t.string "postal_code"
    t.string "region"
    t.string "latitude"
    t.string "longitude"
    t.string "phone_number"
    t.string "currency_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ubers", force: :cascade do |t|
    t.string "uuid", null: false
    t.string "url", null: false
    t.string "slug"
    t.string "city_slug"
    t.integer "city_id"
    t.boolean "delivery"
    t.boolean "pickup"
    t.float "rating_value"
    t.integer "rating_count"
    t.string "time_delivery"
    t.bigint "restaurant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_ubers_on_restaurant_id"
  end

  add_foreign_key "avoid_foods", "avoid_food_categories"
  add_foreign_key "categories", "hungers"
  add_foreign_key "imagers", "restaurants"
  add_foreign_key "ingredients", "category_ingredients"
  add_foreign_key "meals", "restaurants"
  add_foreign_key "ubers", "restaurants"
end
