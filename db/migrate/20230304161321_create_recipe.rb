class CreateRecipe < ActiveRecord::Migration[6.1]
  def change
     create_table :recipes do |t|
      t.string :image_url
      t.string :Meal
      t.string :Category
      t.string :Area
      t.string :instructions
      t.string :Ingredient
      t.timestamps
    end
  end
end
