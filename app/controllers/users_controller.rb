class UsersController < ApplicationController
     
    def index 
        users = User.all 
        render json: users, except: [:created_at, :updated_at]
    end

    def show 
        user = User.find(params[:id])
        render json: user, except: [:created_at, :updated_at]
    end

    def new 
        user = User.new
    end

    def create 
        user = User.new(user_params)
        if user.save
            render json: user, except: [:created_at, :updated_at]
        end
    end

    private 

    def user_params
        params.require(:user).permit(:name, :username)
    end

end
