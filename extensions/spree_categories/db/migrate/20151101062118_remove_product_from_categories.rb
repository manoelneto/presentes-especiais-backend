class RemoveProductFromCategories < ActiveRecord::Migration
  def change
    remove_column :spree_categories, :product
  end
end
