class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.references :spree_user, index: true, foreign_key: true
      t.string :provider
      t.string :uid
      t.string :name

      t.timestamps null: false
    end
  end
end
