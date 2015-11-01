Spree::Api::BaseController.class_eval do
  alias_method :product_scope_original, :product_scope

  def product_scope
    scope = product_scope_original

    if params[:category_id].present?
      scope = scope.where(category_id: params[:category_id])
    end

    scope
  end
end
