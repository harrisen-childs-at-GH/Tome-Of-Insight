class CampaignsController < ApplicationController
  def landing
    @user_campaigns = Campaign.all
    if current_user
      @email = current_user.email
      @id = current_user.id
      @user = User.find(@id)
    else
      redirect_to my_new_user_session_path, notice: 'You are not logged in.'
    end
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def generate
    @campaign = Campaign.find(params[:id])
  end
end
