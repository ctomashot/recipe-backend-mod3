class CommentsController < ApplicationController

    def index 
        comments = Comment.all
        render json: comments.to_json(:include => {
            :recipe => {:only => [:title, :content, :image, :ingredients, :user_id, :vegetarian, :vegan]},
            :user => {:only => [:username]}
        }, except: [:created_at, :updated_at])
    end

    def show
        find_comment
        render json: find_comment.to_json(:include => {
            :recipe => {:only => [:title, :content, :image, :ingredients, :user_id, :vegetarian, :vegan]},
            :user => {:only => [:username]}
        }, except: [:created_at, :updated_at])

    end

    def new 
        comment = Comment.new
    end

    def create 
        comment = Comment.new(comment_params)
        if comment.save
            render json: comment, except: [:created_at, :updated_at]
        end
    end

    def destroy
        find_comment.destroy
    end

    private 

    def comment_params
        params.require(:comment).permit(:content, :user_id, :recipe_id)
    end

    def find_comment
       comment = Comment.find(params[:id])
    end

end
