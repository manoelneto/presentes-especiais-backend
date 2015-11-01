# This migration comes from spree_categories (originally 20151101062320)
class AddCategoryToSpreeProducts < ActiveRecord::Migration
  def change
    add_reference :spree_products, :category, index: true, foreign_key: true
  end
end
