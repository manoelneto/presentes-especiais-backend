module CartsHelper
  CART_ATTRIBUTES = [
    :cart_attributes
  ]

  mattr_reader *CART_ATTRIBUTES

  @@cart_attributes = [
    :id, :spree_user_id
  ]
end
