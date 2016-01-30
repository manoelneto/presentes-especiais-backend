Spree::Admin::ProductsController.class_eval do
  before_filter :set_categories, only: [:edit]

  private

    def set_categories
      @categories = CategoryService.index
    end
end
