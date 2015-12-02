Spree::Api::BaseController.class_eval do
  def product_scope
    if @current_user_roles.include?("admin")
      scope = Spree::Product.with_deleted.accessible_by(current_ability, :read).includes(*product_includes)

      unless params[:show_deleted]
        scope = scope.not_deleted
      end
    else
      scope = Spree::Product.accessible_by(current_ability, :read).active.includes(*product_includes)
    end

    if params[:category_id].present?
      scope = scope.where(spree_category_id: params[:category_id])
    end

    scope
  end
end
