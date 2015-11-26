class AddProductToThemes < ActiveRecord::Migration
  def change
    add_reference :spree_themes, :spree_product, index: true, foreign_key: true
  end
end
