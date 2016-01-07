class AddPictureToThemes < ActiveRecord::Migration
  def change
    add_column :themes, :picture, :string
  end
end
