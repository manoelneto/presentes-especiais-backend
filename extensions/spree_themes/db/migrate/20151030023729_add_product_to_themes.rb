class AddProductToThemes < ActiveRecord::Migration
  def change
    add_reference :themes, :product, index: true, foreign_key: true
  end
end
