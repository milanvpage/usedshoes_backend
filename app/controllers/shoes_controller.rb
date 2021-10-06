class ShoesController < ApplicationController
    def index
        shoes = Shoe.all
        render json: shoes #ShoSerializer.new(shoes, {include: [:category]}) --how to do it with FastJSON
    end

    def create
        shoe = Shoe.new(shoe_params)
        #byebug
        if shoe.save
            render json: shoe
        else
            render json: {errors: "Couldn't be Saved"}
        end
    end

    def show
        shoe = Shoe.find_by_id(parmas[:id])
        render json: shoe

    end

    def update
        shoe = Shoe.find_by_id(params[:id])
        if shoe.update(shoe_params)
            render json: shoe # using ActiveModel serializer so I can just say shoe
        else
            render json: {error: "Couldn't Update"}
        end
    end

    def destroy
        shoe = Shoe.find_by_id(params[:id])
        shoe.destroy
        render json: {message: "Successfully deleted #{shoe.name}"}
    end


    private

    def shoe_params
        params.require(:shoe).permit(:brand, :name, :yearfounded, :color, :size, :design, :condition, :image_url, :category_id)
    end

end
