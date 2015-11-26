Spree::Product.class_eval do
  has_many :spree_themes, class_name: 'Spree::Theme', inverse_of: :spree_product, foreign_key: 'spree_product_id'
end
