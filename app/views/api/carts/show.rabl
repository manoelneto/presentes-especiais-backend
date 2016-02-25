object @cart
attributes *cart_attributes

child(:cart_items => :cart_items) do
  extends "api/cart_items/show"
end
