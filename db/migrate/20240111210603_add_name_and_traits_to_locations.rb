class AddNameAndTraitsToLocations < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :name, :string
    add_column :locations, :traits, :string
  end
end
