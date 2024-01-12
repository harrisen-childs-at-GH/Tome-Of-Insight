class AddCampaignToLocations < ActiveRecord::Migration[7.0]
  def change
    add_reference :locations, :campaign, null: false, foreign_key: true
  end
end
