require 'rails_helper'

RSpec.describe Item, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  before do
    @item = FactoryBot.build(:item)
  end

  describe '出品' do
    context '内容に問題ない場合' do
      it 'title、text、category_id、condition_id、delivery_id、prefecture_id、arrival_id、priceが300〜9999999の半角数字であれば出品できる' do
        expect(@item).to be_valid
      end
    end

    context '内容に問題がある場合' do
      it 'titleが空だと出品できない' do
        @item.title = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Title can't be blank")
      end

      it 'textが空だと出品できない' do
        @item.text = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Text can't be blank")
      end

      it 'category_idが空だと出品できない' do
        @item.category_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end

      it 'delivery_idが空だと出品できない' do
        @item.delivery_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery can't be blank")
      end

      it 'prefecture_idが空だと出品できない' do
        @item.prefecture_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture can't be blank")
      end

      it 'arrival_idが空だと出品できない' do
        @item.arrival_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Arrival can't be blank")
      end

      it 'priceが〜300円だと出品できない' do
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is not included in the list')
      end

      it '販売価格が半角数字でなければ出品できない' do
        @item.price = '４００'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is not included in the list')
      end
    end
  end
end
