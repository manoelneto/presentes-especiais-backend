class CreateUserPers < ActiveRecord::Migration
  def change
    create_table :user_pers do |t|
      t.references :theme, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
