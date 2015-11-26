module Spree
  class Category < ActiveRecord::Base
    has_many :spree_products, class_name: 'Spree::Product', inverse_of: :spree_category
  end
end
