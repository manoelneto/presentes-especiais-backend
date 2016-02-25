object @cart_item
attributes *cart_items_attributes

child(:spree_product => :spree_product) do
  extends "spree/api/products/show"
end
