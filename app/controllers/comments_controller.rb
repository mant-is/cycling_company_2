class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to ride_path(@comment.ride)
    else
      puts @comment.errors.full_messages
      flash.now.alert = 'Unable to add comment'
      redirect_to :back
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :user_id, :ride_id)
  end
end
