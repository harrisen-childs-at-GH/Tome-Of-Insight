class NotesController < ApplicationController
    def list
        @campaign = Campaign.find(params[:id])
        @notes = Note.where(campaign_id: params[:id])
    end

    def new
        @campaign = Campaign.find(params[:id])
    end

    def create
        binding.pry
        @campaign = Campaign.find(params[:id])
        @note = @campaign.notes.create(note_params)
        redirect_to campaign_path(@campaign)
    end

    private
    def note_params
        params.require(:note).permit(:entry)
    end
end
