class ChangeTypeOfAxisFromAreaEdition < ActiveRecord::Migration
  def change
    change_column :area_editions, :x1, 'integer USING CAST(x1 AS integer)'
    change_column :area_editions, :x2, 'integer USING CAST(x2 AS integer)'
    change_column :area_editions, :y1, 'integer USING CAST(y1 AS integer)'
    change_column :area_editions, :y2, 'integer USING CAST(y2 AS integer)'
  end
end
