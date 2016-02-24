class CartItemService < Service

  def self.find id, options={}
    cart = CartService.getUserCart options[:user]
    cart.cart_items.find id
  end

end
