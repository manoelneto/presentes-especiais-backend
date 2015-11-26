class AddCategoryToSpreeProducts < ActiveRecord::Migration
  def change
    add_reference :spree_products, :spree_category, index: true, foreign_key: true
  end
end
