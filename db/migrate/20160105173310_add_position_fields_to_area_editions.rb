class AddPositionFieldsToAreaEditions < ActiveRecord::Migration
  def change
    remove_column :area_editions, :area_json
    add_column :area_editions, :x1, :string
    add_column :area_editions, :y1, :string
    add_column :area_editions, :x2, :string
    add_column :area_editions, :y2, :string
  end
end
