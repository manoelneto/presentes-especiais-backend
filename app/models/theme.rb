class Theme < ActiveRecord::Base
  belongs_to :spree_product, inverse_of: :themes, class_name: 'Spree::Product'
end
