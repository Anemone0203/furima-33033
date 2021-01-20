class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @items = Item.all
  end

  def new
    @Item = Item.new
  end

  def create
    @item = Item.new(item_params)
   if @item.save
      redirect_to root_path
    else
      render :new
    end
  # rescue => exception
  end



 private
 def item_params
  params.require(:item).permit(:title, :text, :category_id, :condition_id, :delivery_id, :prefecture_id, :date_id, :price, :user)
 end


end
