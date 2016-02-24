object @cart_item
attributes :id

child(:spree_product => :spree_product) do
  extends "spree/api/products/show"
end
