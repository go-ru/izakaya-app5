class CommentsController < ApplicationController

  def index
    @message = Message.find(params[:message_id])
    @comments = Comment.all
    @comment = Comment.new
    @users = User.all 
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save || @comment != nil
      redirect_to message_comments_path
    else
      render :index
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, message_id: params[:message_id])
  end

  def move_to_index
    redirect_to new_user_session_path unless user_signed_in?
  end
end
