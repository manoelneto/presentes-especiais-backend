class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.references :cart_item, index: true, foreign_key: true
      t.references :user_per, index: true, foreign_key: true
      t.references :spree_product, index: true, foreign_key: true
      t.integer :quantity
      t.integer :price

      t.timestamps null: false
    end
  end
end
