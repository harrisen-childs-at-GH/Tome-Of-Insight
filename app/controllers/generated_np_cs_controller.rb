class GeneratedNpCsController < ApplicationController
    def new
        @campaign = Campaign.find(params[:id])
    end
end
