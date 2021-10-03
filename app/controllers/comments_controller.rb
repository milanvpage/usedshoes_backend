class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments
    end

    def create
        comment = Comment.new(comment_params)
        #byebug
        if comment.save
            render json: comment
        else
            render json: {errors: "Couldn't be Saved"}
        end
    end

    def show
        comment = Comment.find_by_id(parmas[:id])
        render json: comment

    end


    def update
        comment = Comment.find_by_id(params[:id])
        if comment.update(comment_params)
            render json: comment
        else
            render json: {error: "Couldn't Update"}
        end
    end

    def destroy
        comment = Comment.find_by_id(params[:id])
        comment.destroy
        render json: {message: "Successfully deleted #{comment.title}"}
    end


    private

    def comment_params
        params.require(:comment).permit(:title, :description, :shoe_id)
    end
end
