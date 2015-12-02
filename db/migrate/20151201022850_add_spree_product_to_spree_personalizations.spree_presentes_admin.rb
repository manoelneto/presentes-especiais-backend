# This migration comes from spree_presentes_admin (originally 20151201022807)
class AddSpreeProductToSpreePersonalizations < ActiveRecord::Migration
  def change
    add_reference :spree_personalizations, :spree_product, index: true, foreign_key: true
  end
end
