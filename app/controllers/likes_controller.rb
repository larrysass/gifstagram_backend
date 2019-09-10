class LikesController < ApplicationController
    def create
        @like = Like.create(like_params)
        render json: @like
    end

    def index
        likes = Like.all 
        render json: likes, include: [:user, :gif]
    end

    def show
        like = Like.find(params[:id])
        render json: { id: like.id, user: like.user, gif: like.gif }
    end

    private

    def like_params
        params.require(:like).permit(:user_id, :gif_id)
    end
end
