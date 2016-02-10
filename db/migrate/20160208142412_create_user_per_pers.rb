class CreateUserPerPers < ActiveRecord::Migration
  def change
    create_table :user_per_pers do |t|
      t.string :personalization_picture
      t.references :layout, index: true, foreign_key: true
      t.references :user_per, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
