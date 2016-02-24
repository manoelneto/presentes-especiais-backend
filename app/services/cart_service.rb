class CartService < Service

  def self.getUserCart user
    Cart.where(spree_user: user).first_or_create
  end

  private

end
