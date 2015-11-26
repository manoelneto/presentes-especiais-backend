class CreateSpreeCategories < ActiveRecord::Migration
  def change
    create_table :spree_categories do |t|
      t.string :name
      t.references :spree_product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
