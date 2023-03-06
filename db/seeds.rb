ActiveRecord::Base.connection.execute('PRAGMA foreign_keys = OFF')

require 'faker'


# Create recipes
50.times do
  Recipe.create(
    image_url: Faker::LoremFlickr.image,
    Meal: Faker::Food.dish,
    Category: Faker::Restaurant.type,
    Area: Faker::Nation.nationality,
    instructions: Faker::Food.description,
    Ingredient: Faker::Food.ingredient
  )
end

# Create reviews
50.times do
  Review.create(
    content: Faker::Lorem.paragraphs(number: 2).join("\n"),
    rating: Faker::Number.between(from: 1, to: 5),
    recipe_id: Faker::Number.between(from: 1, to: 50),
  )
end

ActiveRecord::Base.connection.execute('PRAGMA foreign_keys = ON')
