require 'elasticsearch/model'

class Recipe < ActiveRecord::Base
  #ELASTICSEARCH#
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  belongs_to :food_type
  belongs_to :food_preference
  belongs_to :cuisine

  #FriendlyId#
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :food_preference, :food_type, :cuisine, :ingredients, presence: true
  
	DIFFICULTY = %W(Easy Medium Hard)
end
Recipe.import
