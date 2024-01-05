class SessionsController < ApplicationController
    def login
        binding.pry

        resource = User.find_by(email: params[:user][:email])

        resource = warden.authenticate!(scope: resource_name)
        sign_in(resource_name, resource)
        redirect_to landing_path
    end
end
