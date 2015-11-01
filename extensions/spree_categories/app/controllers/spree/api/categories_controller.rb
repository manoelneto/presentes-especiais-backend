module Spree
  module Api
    class CategoriesController < Spree::Api::BaseController
      helper :categories

      def index
        @categories = Spree::Category.all
        # @categories = @categories.page(params[:page]).per(params[:per_page])
        expires_in 15.minutes, :public => true
        headers['Surrogate-Control'] = "max-age=#{15.minutes}"
        respond_with(@categories)
      end
    end
  end
end
