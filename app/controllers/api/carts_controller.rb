module Api
  class CartsController < ApiBaseController
    helper :carts
    helper :themes
    helper :personalizations
    helper :layouts
    helper :area_editions
    helper :cart_items
    before_filter :verify_real_user!

    def user_cart
      @cart = CartService.getUserCart(current_api_user)
    end

    private

      # def cart_params
      #   the_params = params.require(:user_per).permit([
      #     :theme_id,
      #     user_per_pers_attributes: [
      #       :personalization_id,
      #       :layout_id,
      #       user_area_pers_attributes: [
      #         :x1,
      #         :x2,
      #         :y1,
      #         :y2,
      #         :area_type,
      #         :image,
      #         :text,
      #       ]
      #     ]
      #   ])
      #
      #   the_params.merge! spree_user_id: current_api_user.id
      #
      #   the_params
      # end
  end
end
