class ItemsController < ApplicationController

def index
  @items = Item.all
end

def new
  @Item = Item.new
end

def create
  Item.create(tweet_params)
end


 private
 def item_params
  params.require(:tweet).permit(:title, :text, :price, :users)
 end


end
