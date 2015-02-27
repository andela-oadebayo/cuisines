class Recipe < ActiveRecord::Base
  belongs_to :food_type
  belongs_to :food_preference
  belongs_to :cuisine

  validates :title, :food_preference, :food_type, :cuisine, :ingredients, presence: true
  
	DIFFICULTY = %W(Easy Medium Hard)
end
