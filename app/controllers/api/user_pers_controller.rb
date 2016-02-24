module Api
  class UserPersController < ApiBaseController
    helper :user_pers
    helper :user_per_pers
    helper :user_area_pers
    before_filter :verify_real_user!

    def build_params
      super.merge(user: current_api_user)
    end

    private

      def user_per_params
        the_params = params.require(:user_per).permit([
          :theme_id,
          user_per_pers_attributes: [
            :personalization_id,
            :layout_id,
            user_area_pers_attributes: [
              :x1,
              :x2,
              :y1,
              :y2,
              :area_type,
              :image,
              :text,
            ]
          ]
        ])

        the_params
      end
  end
end
