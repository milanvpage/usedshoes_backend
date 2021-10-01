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


    private

    def comment_params
        params.require(:comment).permit(:title, :description, :shoe_id)
    end
end
