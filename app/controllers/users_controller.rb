class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users 
    end

    def profile 
        render json: current_user
    end

    def show
        user = User.find(params[:id])
        gifs = user.likes.map{|like| like.gif} 
        render json: gifs
        # render json: gifs, include: [:likes, :users, :comments]
    end

    def create 
        
        user = User.create(user_params)

        if user.valid? 
            render json: {token: create_token(user.id)}
        else 
            render json: {errors: user.errors.full_messages}, status: 422
        end
    end

    private

    def user_params 
        params.permit(:username, :password)
    end
end
