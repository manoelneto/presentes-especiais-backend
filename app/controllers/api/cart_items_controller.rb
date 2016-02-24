module Api
  class CartItemsController < ApiBaseController
    before_filter :verify_real_user!

    def build_params
      super.merge(user: current_api_user)
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
