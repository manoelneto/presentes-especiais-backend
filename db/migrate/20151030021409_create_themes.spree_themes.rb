# This migration comes from spree_themes (originally 20151030021308)
class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|

      t.timestamps null: false
    end
  end
end
