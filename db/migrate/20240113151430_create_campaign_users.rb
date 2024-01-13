class CreateCampaignUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :campaign_users do |t|
      t.references :User, null: false, foreign_key: true
      t.references :Campaign, null: false, foreign_key: true

      t.timestamps
    end
  end
end
