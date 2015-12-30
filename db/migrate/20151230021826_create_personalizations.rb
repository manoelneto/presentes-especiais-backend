class CreatePersonalizations < ActiveRecord::Migration
  def change
    create_table :personalizations do |t|
      t.references :theme, index: true, foreign_key: true
      t.attachment :picture
      t.string :name
      t.integer :order

      t.timestamps null: false
    end
  end
end
