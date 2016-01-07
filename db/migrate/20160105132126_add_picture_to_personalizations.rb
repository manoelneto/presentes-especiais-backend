class AddPictureToPersonalizations < ActiveRecord::Migration
  def change
    add_column :personalizations, :picture, :string
  end
end
