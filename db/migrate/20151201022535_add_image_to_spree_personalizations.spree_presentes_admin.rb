# This migration comes from spree_presentes_admin (originally 20151201022147)
class AddImageToSpreePersonalizations < ActiveRecord::Migration
  def change
    add_attachment :spree_personalizations, :image
  end
end
