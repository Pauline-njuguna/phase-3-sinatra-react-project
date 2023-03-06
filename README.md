# Recipe App

This is a Sinatra-based web application that allows users to search for and view recipes. Users can also add new recipes to the database, view and add reviews, and delete recipes.

# Prerequisites

Ruby 2.6.3 or later

Bundler

SQLite3

# Installation

Clone this repository: git clone https://github.com/your-username/recipe-app.git

Navigate to the project directory: cd recipe-app

Install dependencies: bundle install

Set up the database: rake db:migrate

Seed the database: rake db:seed

Start the server: ruby app.rb

Access the application in a web browser at http://localhost:9292
# Usage
Search for Recipes
To search for recipes, enter a search query in the search bar on the home page and press Enter. The search results will be displayed on a new page.

View Recipe Details
To view the details of a recipe, click on the recipe card on the home page or the recipe title on the search results page. This will take you to a page with the recipe details, including the image, meal type, category, area, instructions, and ingredients.

Add a New Recipe
To add a new recipe, click on the "Add Recipe" link in the navigation bar. This will take you to a form where you can enter the details of the new recipe, including the image URL, meal type, category, area, instructions, and ingredients. Once you have entered all the details, click the "Submit" button to add the recipe to the database. The new recipe will be displayed on the home page.

View and Add Reviews
To view the reviews of a recipe, click on the recipe card on the home page or the recipe title on the search results page. Scroll down to the "Reviews" section to see the existing reviews for the recipe. To add a new review, fill out the "Name" and "Comment" fields and click the "Submit" button. The new review will be displayed on the recipe details page.

Delete a Recipe
To delete a recipe, click on the recipe card on the home page or the recipe title on the search results page. This will take you to a page with the recipe details. Click the "Delete" button at the bottom of the page to delete the recipe from the database. Note that this action cannot be undone.

# Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/your-username/recipe-app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

# License
This project is available as open source under the terms of the MIT License.-