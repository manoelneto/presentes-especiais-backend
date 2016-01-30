class Admin::CategoriesController < BaseController

  private

    def nested_resource
      [:admin]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(
        :id,
        :name,
        :picture
      )
    end
end
