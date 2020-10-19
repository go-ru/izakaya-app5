class MessagesController < ApplicationController
  before_action :move_to_index

  def index
    @messages = Message.all.order('created_at DESC')
    @message = Message.new
    @users = User.all
  end

  def create
    @message = Message.new(message_params)
    if @message.save || @message != nil
      redirect_to messages_path
    else
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:request).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to new_user_session_path unless user_signed_in?
  end

end
