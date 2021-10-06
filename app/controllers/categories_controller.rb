class CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: categories
    end

    def show
        category = Category.find_by_id(parmas[:id])
        render json: category

    end

    private

    def category_params
        params.require(:category).permit(:name, :id, :shoes)
    end
    
end