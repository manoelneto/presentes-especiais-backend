module Spree
  module Admin
    class PersonalizationsController < Spree::Admin::BaseController
      before_action :set_product

      def index
      end

      def layout
      end

      def new
        @personalization = Personalization.new
      end

      private

        def set_product
          @product = Spree::Product.where(slug: params['product_id']).first
          if not @product.present?
            flash[:error] = flash_message_for(Spree::Product.new, :not_found)
            redirect_to admin_products_url
            return
          end
        end
    # def personalization
    # end
    end
  end
end
