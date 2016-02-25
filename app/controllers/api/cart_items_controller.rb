module Api
  class CartItemsController < ApiBaseController
    before_filter :verify_real_user!
    helper :themes
    helper :personalizations
    helper :layouts
    helper :area_editions
    helper :cart_items

    def build_params
      super.merge(user: current_api_user)
    end

    def count
      @count = CartService.getUserCart(current_api_user).cart_items.count
      render json: {count: @count}
    end

    private

      def cart_item_params
        the_params = params.require(:cart_item).permit([
          :id,
          :spree_product_id,
          :quantity,
          :price,
          :user_per_id,
        ])

        the_params.merge! cart_id: CartService.getUserCart(current_api_user).id

        the_params
      end
  end
end
