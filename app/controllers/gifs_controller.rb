class GifsController < ApplicationController

    def index 
        gifs = Gif.all 
        render json: gifs, include: [:likes, :users, :comments]
    end
    

    def new
        @gif = Gif.new
    end

    def show
        gif = Gif.find(params[:id])
        render json: {
            id: gif.id, url: gif.url, likes: gif.likes, comments: gif.comments
        }
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
