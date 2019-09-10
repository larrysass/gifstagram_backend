class GifsController < ApplicationController
    def new
        @gif = Gif.new
    end

    def create
        @gif = Gif.create(gif_params)
        render json: @gif
    end

    private

    def gif_params
        params.require(:gif).permit(:url)
    end
end
