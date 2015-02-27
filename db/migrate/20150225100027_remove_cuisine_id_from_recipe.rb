class RemoveCuisineIdFromRecipe < ActiveRecord::Migration
  def change
    remove_column :recipes, :cuisine_id, :integer
  end
end
