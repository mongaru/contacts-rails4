class FilesController < ApplicationController
    def new
        @photo = Simplefile.new
    end

    def create
        @photo = Simplefile.new(photo_params)
        if @photo.save
        flash[:success] = "Photo saved!"
        redirect_to "/"
        else
        render 'new'
        end
    end
end
