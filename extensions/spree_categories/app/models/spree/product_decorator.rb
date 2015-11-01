Spree::Product.class_eval do
  belongs_to :category, inverse_of: :products
end
