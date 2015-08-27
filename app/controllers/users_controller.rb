class UsersController < ApplicationController
  def index
    render json: Spree.user_class.all
  end
end