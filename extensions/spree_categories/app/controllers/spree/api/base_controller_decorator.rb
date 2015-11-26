Spree::Api::BaseController.class_eval do
  alias_method :product_scope_original, :product_scope

  def product_scope
    scope = product_scope_original

    if params[:spree_category_id].present?
      scope = scope.where(spree_category_id: params[:spree_category_id])
    end

    scope
  end
end
