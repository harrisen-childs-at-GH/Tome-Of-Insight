class DropTableNpCs < ActiveRecord::Migration[7.0]
  def change
    drop_table :np_cs
  end
end
