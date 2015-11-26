# This migration comes from spree_categories (originally 20151101040214)
class CreateSpreeCategories < ActiveRecord::Migration
  def change
    create_table :spree_categories do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
