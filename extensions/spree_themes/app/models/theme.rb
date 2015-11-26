class Theme < ActiveRecord::Base
  belongs_to :spree_product, class_name: 'Spree::Product', inverse_of: :themes
end
