module CartItemsHelper
  CART_ITEMS_ATTRIBUTES = [
    :cart_items_attributes
  ]

  mattr_reader *CART_ITEMS_ATTRIBUTES

  @@cart_items_attributes = [
    :id, :spree_user_id, :price, :quantity
  ]
end
