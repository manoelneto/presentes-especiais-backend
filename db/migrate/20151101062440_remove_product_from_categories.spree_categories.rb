# This migration comes from spree_categories (originally 20151101062118)
class RemoveProductFromCategories < ActiveRecord::Migration
  def change
    remove_column :spree_categories, :spree_product
  end
end
