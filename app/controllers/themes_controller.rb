class ThemesController < NestedBaseController

  private

    def nested_resource
      super + [@product]
    end

    def set_nesteds
      @product = ProductService.find(params[:product_id], params)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theme_params
      params.require(:theme).permit(:spree_product_id, :picture, :name, :default)
    end
end
