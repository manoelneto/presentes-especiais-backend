class RemoveProductFromCategories < ActiveRecord::Migration
  def change
    remove_column :spree_categories, :spree_product
  end
end
