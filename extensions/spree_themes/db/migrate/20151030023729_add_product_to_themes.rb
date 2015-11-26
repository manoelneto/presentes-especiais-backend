class AddProductToThemes < ActiveRecord::Migration
  def change
    add_reference :themes, :spree_product, index: true, foreign_key: true
  end
end
