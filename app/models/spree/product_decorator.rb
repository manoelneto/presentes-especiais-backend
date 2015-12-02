Spree::Product.class_eval do
  belongs_to :category, class_name: 'Spree::Category', inverse_of: :products, foreign_key: 'spree_category_id'
  has_many :personalizations, class_name: 'Spree::Personalization', inverse_of: :product, foreign_key: 'spree_product_id'
  has_many :spree_themes, class_name: 'Spree::Theme', inverse_of: :spree_product, foreign_key: 'spree_product_id'
end
