class RemoveFoodPreferenceIdFromRecipe < ActiveRecord::Migration
  def change
    remove_column :recipes, :food_preference_id, :integer
    remove_column :recipes, :food_type_id, :integer
  end
end
