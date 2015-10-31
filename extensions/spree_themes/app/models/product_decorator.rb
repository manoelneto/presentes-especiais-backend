Spree::Product.class_eval do
  has_many :themes, inverse_of: :product
end
