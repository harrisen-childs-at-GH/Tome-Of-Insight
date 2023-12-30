class NotesController < ApplicationController
    def list
        @notes = Note.find(params[:id])
    end

    def new
        @note = Note.new
    end
end
