class StoresController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]
  before_action :set_user, only: [:edit, :show]


  def index
    # @users = User.left_joins(:delivers).group("store_name").order('count(user_id) DESC')
    @users = User.all
  end

  def new
    @user = User.find(current_user[:id])
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to messages_path
    else
      render :new
    end
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    if @store.update(store_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
  end

  private

  def store_params
    params.require(:store).permit(:address, :tel_number, :genre, :hour, :budget, :image).merge(user_id: current_user.id)
  end

  def giver_count
    @delivers = Deliver.all
    @giver = 0
    @delivers.each do |deliver|
      if deliver.user_id == @user.id
        @giver += 1
      end
    end
    puts @giver
  end

  def taker_count
    @delivers = Deliver.all
    @taker = 0
    @delivers.each do |deliver|
      if deliver.message.user_id == @user.id
        @taker += 1
      end
    end
    puts @taker
  end

  def move_to_index
    redirect_to new_user_session_path unless user_signed_in?
  end

  def set_user
    @user = User.find(params[:id])
  end
end
