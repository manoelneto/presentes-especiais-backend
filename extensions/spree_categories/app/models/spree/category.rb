module Spree
  class Category < ActiveRecord::Base
    has_many :products, class_name: 'Spree::Product', inverse_of: :category
  end
end
