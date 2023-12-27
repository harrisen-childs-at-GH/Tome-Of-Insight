class CampaignsController < ApplicationController
  def landing
    @user_campaigns = Campaign.all
    if current_user
      @email = current_user.email
      @id = current_user.id
      @user = User.find(@id)
    else
      redirect_to root_path, notice: 'You are not logged in.'
    end
  end
end
