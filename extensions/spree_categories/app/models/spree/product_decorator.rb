Spree::Product.class_eval do
  belongs_to :spree_category, class_name: 'Spree::Category', inverse_of: :spree_products
end
