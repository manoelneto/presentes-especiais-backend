class DropCartItemFromCartItem < ActiveRecord::Migration
  def change
    remove_column :cart_items, :cart_item_id
  end
end
