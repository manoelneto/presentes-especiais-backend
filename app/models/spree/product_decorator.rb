Spree::Product.class_eval do
  belongs_to :category, class_name: 'Spree::Category', inverse_of: :products, foreign_key: 'spree_category_id'
  has_many :themes, inverse_of: :spree_product, foreign_key: :spree_product_id
end
