class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
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
    @item = Item.find(params[:id])
  end



  def edit
    @item = Item.find(params[:id])
  end


  def update
    @item = Item.find(params[:id])
    # @item.update(item_params)
     if @item.update(item_params)
      redirect_to item_path
    else
      render :edit
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:title, :text, :category_id, :condition_id, :delivery_id, :prefecture_id, :arrival_id, :price,
                                 :user, :image).merge(user_id: current_user.id)
  end
end
