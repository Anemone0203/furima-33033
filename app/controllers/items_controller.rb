class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]


  def index
    @items = Item.all.order(created_at: :desc)
  end 

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    if current_user == @item.user
    else
      redirect_to root_path
    end
  end

  def update
     if @item.update(item_params)
      redirect_to item_path
    else
      render :edit
    end
  end

  def destroy
  end

  def set_tweet
    @item = Item.find(params[:id])
  end


  private

  def item_params
    params.require(:item).permit(:title, :text, :category_id, :condition_id, :delivery_id, :prefecture_id, :arrival_id, :price,
                                 :user, :image).merge(user_id: current_user.id)
  end
end
