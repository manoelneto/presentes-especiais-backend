class LayoutsController < NestedBaseController

  def edit
    super
    @layout.area_editions.build
  end

  def new
    super
    @layout.area_editions.build
  end

  private

    def nested_resource
      super + [@product, @theme, @personalization]
    end

    def set_nesteds
      @product = ProductService.find(params[:product_id], params)
      @theme = ThemeService.find(params[:theme_id], params)
      @personalization = PersonalizationService.find(params[:personalization_id], params)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def layout_params
      params.require(:layout).permit(:personalization_id, :name, :order, :area_editions_attributes => [
        :id,
        :x1,
        :y1,
        :x2,
        :y2,
        :name,
        :required,
        :area_type,
        :order
      ])
    end
end
