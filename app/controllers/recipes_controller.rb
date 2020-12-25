class RecipesController < ApplicationController

    def index 
        recipes = Recipe.all
        render json: recipes, except: [:created_at, :updated_at]
    end

    def show 
        find_recipe
        render json: find_recipe, except: [:created_at, :updated_at]
    end

    def new 
        recipe = Recipe.new
    end

    def create 
        recipe = Recipe.new(recipe_params)
        if recipe.save 
            render json: recipe, except: [:created_at, :updated_at]
        end
    end

    def edit 
        find_recipe
    end

    def update 
        find_recipe.update(recipe_params)
        render json: find_recipe, except: [:created_at, :updated_at]
    end

    def destroy
        find_recipe.destroy
    end

    private

    def find_recipe
        recipe = Recipe.find(params[:id])
    end

    def recipe_params
        params.require(:recipe).permit(:title, :content, :image, :ingredients, :user_id, :vegetarian, :vegan)
    end

end
