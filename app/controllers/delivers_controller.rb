class DeliversController < ApplicationController
  before_action :move_to_index
  
  def index
    @users = User.all
    @deliver = Deliver.new
    @message = Message.find(params[:message_id])
    redirect_to messages_path if @message.deliver.present?
  end

  def create
    @deliver = Deliver.new(deliver_params)
    if @deliver.save
      redirect_to messages_path
    else
      render :index
    end
  end

  private

  def deliver_params
    params.require(:deliver).permit(:store_name, :product, :image).merge(user_id: current_user.id, message_id: params[:message_id])
  end

  def move_to_index
    redirect_to new_user_session_path unless user_signed_in?
  end

end
