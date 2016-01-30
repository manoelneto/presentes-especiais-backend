object @category
attributes *category_attributes
node :picture_thumb do |c| c.picture.url(:thumb) end
node :picture_small_thumb do |c| c.picture.url(:small_thumb) end

# child :products => :products do
#   attributes *product_attributes
# end
