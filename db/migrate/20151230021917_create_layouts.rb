class CreateLayouts < ActiveRecord::Migration
  def change
    create_table :layouts do |t|
      t.references :personalization, index: true, foreign_key: true
      t.string :name
      t.integer :order

      t.timestamps null: false
    end
  end
end
