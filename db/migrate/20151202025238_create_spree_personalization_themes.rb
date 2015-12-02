class CreateSpreePersonalizationThemes < ActiveRecord::Migration
  def change
    create_table :spree_personalization_themes do |t|
      t.references :spree_personalization, index: true, foreign_key: true
      t.references :spree_theme, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
