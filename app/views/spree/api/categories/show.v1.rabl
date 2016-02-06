object @category
attributes *category_attributes
node :picture_thumb do |c| c.picture.url(:thumb) end
node :picture_small_thumb do |c| c.picture.url(:small_thumb) end

child :products => :products do
  # extends "spree/api/products/show"

  attributes *product_attributes
  # extends "spree/api/products/show"

  child :master => :master do
    extends "spree/api/variants/small"
  end
end
