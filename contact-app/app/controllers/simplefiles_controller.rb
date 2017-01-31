class SimplefilesController < ApplicationController
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

    private

    def photo_params
        params.require(:simplefile).permit(:simplefile, :title)
    end
end
