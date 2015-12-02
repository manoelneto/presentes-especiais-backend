module Spree
  class Theme < ActiveRecord::Base
    belongs_to :spree_product, class_name: 'Spree::Product', inverse_of: :spree_themes, foreign_key: 'spree_product_id'
    has_many :personalizations, class_name: 'Spree::Personalization', through: :personalization_themes
    has_many :personalization_themes, foreign_key: 'spree_personalization_id'
  end
end
