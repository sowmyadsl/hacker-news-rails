class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = @commentable.comments.new comment_params
    @comment.save
    redirect_to (request.env['HTTP_REFERER']), notice: "Your comment was successfully posted."
  end

  private
    def comment_params
      params.require(:comment).permit(:comment)
    end
end
