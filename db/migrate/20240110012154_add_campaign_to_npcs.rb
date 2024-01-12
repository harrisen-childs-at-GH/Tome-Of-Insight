class AddCampaignToNpcs < ActiveRecord::Migration[7.0]
  def change
    add_reference :npcs, :campaign, null: false, foreign_key: true, index: true
  end
end
