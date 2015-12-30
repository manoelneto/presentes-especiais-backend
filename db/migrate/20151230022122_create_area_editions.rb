class CreateAreaEditions < ActiveRecord::Migration
  def change
    create_table :area_editions do |t|
      t.references :layout, index: true, foreign_key: true
      t.string :name
      t.boolean :required
      t.integer :order
      t.string :area_type

      t.timestamps null: false
    end
  end
end
