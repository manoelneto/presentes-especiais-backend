class Spree::Api::V1::UsersController < Spree::Api::V1::BaseController

  def sign_in
    @user = Spree.user_class.where(email: user_params[:email]).first

    if @user
      if @user.valid_password?(user_params[:password])
        @user.generate_spree_api_key! unless @user.spree_api_key
        render :show
      else
        render json: {message: "Invalid credentials"}, status: :unprocessable_entity
      end
    else
      render json: {message: "Invalid credentials"}, status: :unprocessable_entity
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

  def has_email
    render json: Spree.user_class.where(email: params[:email]).any?
  end

  private

    def user_params
      params.require(:user).permit(
        :email,
        :password,
        :identities_attributes => [
          :id,
          :uid,
          :provider,
          :name
        ]
      )
    end

end
