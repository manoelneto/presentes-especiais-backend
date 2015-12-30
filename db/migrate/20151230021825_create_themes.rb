class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.references :spree_product, index: true, foreign_key: true
      t.attachment :picture
      t.string :name
      t.boolean :default

      t.timestamps null: false
    end
  end
end
