# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    binding.pry
    return unless user_signed_in?
    redirect_to landing_path
  end

  # POST /resource/sign_in
  def create
    binding.pry

    resource = User.find_by(email: params[:user][:email])

    resource = warden.authenticate!(scope: resource_name)
    sign_in(resource_name, resource)
    redirect_to landing_path
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
