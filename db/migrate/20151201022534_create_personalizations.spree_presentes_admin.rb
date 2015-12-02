# This migration comes from spree_presentes_admin (originally 20151201021931)
class CreatePersonalizations < ActiveRecord::Migration
  def change
    create_table :spree_personalizations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
