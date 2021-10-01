class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments
    end

    def create
        comment = Comment.new(comment_params)
    end


    private

    def comment_params
        params.require(:comment).permit(:title, :description, :shoe_id)
    end
end
