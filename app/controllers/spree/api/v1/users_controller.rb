class Spree::Api::V1::UsersController < Spree::Api::V1::BaseController

  def sign_in
    @user = Spree.user_class.where(email: user_params[:email]).first

    if @user
      if @user.valid_password?(user_params[:password])
        @user.generate_spree_api_key! unless @user.spree_api_key
        render :show
      else
        render text: "Invalid credentials", status: :unprocessable_entity
      end
    else
      render text: "Invalid credentials", status: :unprocessable_entity
    end
  end

  def create
    @user = Spree.user_class.new(user_params)

    if @user.valid?
      @user.generate_spree_api_key!
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password)
    end

end
