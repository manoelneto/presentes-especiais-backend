class AddPictureToSpreeCategories < ActiveRecord::Migration
  def change
    add_column :spree_categories, :picture, :string
  end
end
