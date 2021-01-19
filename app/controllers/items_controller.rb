class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @Item = Item.new
  end

  def create
    Item.create(tweet_params)
   if current_user.create(tweet_params)
      redirect_to root_path
    else
      render :edit
    end
  # rescue => exception
  end



 private
 def item_params
  params.require(:tweet).permit(:title, :text, :price, :users)
 end


end
