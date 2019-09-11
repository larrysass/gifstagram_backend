class GifsController < ApplicationController
    def new
        @gif = Gif.new
    end

    def index
        @gifs = Gif.all.map{|gif| {url: gif.url, id: gif.id, likes: gif.likes, users: gif.users}}
        render json: @gifs
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
