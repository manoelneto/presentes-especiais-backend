class CreateUserAreaPers < ActiveRecord::Migration
  def change
    create_table :user_area_pers do |t|
      t.integer :x1
      t.integer :x2
      t.integer :y1
      t.integer :y2
      t.string :area_type
      t.string :image
      t.string :text
      t.references :user_per_per, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
