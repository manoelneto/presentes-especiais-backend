class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook_access_token
    @user = Spree.user_class.find_for_oauth(env["omniauth.auth"])

    if @user
      render 'spree/api/v1/users/show'
    else
      render json: {message: "User not in system"}, status: :not_found
    end
  end
end
