class AddAreaJsonToAreaEditions < ActiveRecord::Migration
  def change
    add_column :area_editions, :area_json, :text
  end
end
