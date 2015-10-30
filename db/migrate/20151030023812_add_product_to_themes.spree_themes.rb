# This migration comes from spree_themes (originally 20151030023729)
class AddProductToThemes < ActiveRecord::Migration
  def change
    add_reference :themes, :product, index: true, foreign_key: true
  end
end
