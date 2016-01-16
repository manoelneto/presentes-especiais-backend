class PersonalizationsController < NestedBaseController

  private

    def nested_resource
      super + [@product, @theme]
    end

    def set_nesteds
      @product = ProductService.find(params[:product_id], params)
      @theme = ThemeService.find(params[:theme_id], params)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personalization_params
      params.require(:personalization).permit(:theme_id, :picture, :name, :order)
    end
end
