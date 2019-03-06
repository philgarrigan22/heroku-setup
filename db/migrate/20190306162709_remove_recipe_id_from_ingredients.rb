class RemoveRecipeIdFromIngredients < ActiveRecord::Migration[5.2]
  def change
    remove_reference :ingredients, :recipe_id, foreign_key: true
  end
end
