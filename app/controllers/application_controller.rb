class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
    get '/recipes'do
    recipes = Recipe.all
    p recipes
    recipes.to_json
  end
   get "/recipes/:id" do 
    recipes = Recipe.find_by(id: params[:id])
    recipes.to_json()
  end

    # Search recipes by meal name
get '/recipes/search/:meal' do
  meal = params[:meal]
  recipes = Recipe.where("meal LIKE ?", "%#{meal}%")
    
  if recipes.any?
    recipes.to_json()
  else
    status 404
    { error: "No recipes found for #{meal}" }.to_json
  end
end

    post '/recipes' do
    recipes = Recipe.new(params)
    if recipes.save
      recipes.to_json
    else
      { error: 'Error creating recipe' }.to_json
    end
  end
  
   put '/recipes/:id' do
    recipes = Recipe.find(params[:id])
    if recipes.update(params)
      recipes.to_json
    else
      { error: 'Error updating recipe' }.to_json
    end
  end

   # Delete a recipe
  delete '/recipes/:id' do
    recipes = Recipe.find(params[:id])
    recipes.destroy
    { message: 'Recipe deleted' }.to_json
  end

   # Add your routes for reviews here
  get '/recipes/:id/reviews' do 
    recipes = Recipe.find_by(id: params[:id])
    reviews = recipes.reviews
    reviews.to_json()
  end

  get '/recipes/:id/reviews/new' do
  @recipes = Recipe.find(params[:id])
    reviews.to_json()
end

  post '/recipes/:id/reviews' do 
    recipes = Recipe.find_by(id: params[:id])
    reviews= Review.new(params)
    recipe.reviews << reviews
    if reviews.save
      reviews.to_json()
    else
      { error: 'Error creating review' }.to_json
    end
  end
end


 