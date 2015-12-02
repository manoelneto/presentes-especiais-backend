module Spree
  class Theme < ActiveRecord::Base
    belongs_to :spree_product, class_name: 'Spree::Product', inverse_of: :spree_themes, foreign_key: 'spree_product_id'
  end
end
