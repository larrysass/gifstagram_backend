class CommentsController < ApplicationController
    def create
        comment = Comment.create(comment_params)
        render json: comment
    end

    def index
        comments = Comment.all 
        render json: comments, include: [:user, :gif]
    end

    def show
        comment = Comment.find(params[:id])
        render json: { id: comment.id, user: comment.user, gif: comment.gif, content: comment.content }
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :gif_id, :content)
    end
end
