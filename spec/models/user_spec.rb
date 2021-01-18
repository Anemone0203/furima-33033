require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
    
  end
  
  describe "ユーザー新規登録" do
    context '内容に問題ない場合' do
      it "nicknameとemail、passwordが半角英数字混合6文字以上、last＿nameが全角、first_nameが全角、last_name_kanaが全角、first_name_kanaが全角であれば登録できる" do

      expect(@user).to be_valid
      end
    end

    context '内容に問題がある場合'
    it "nicknameが空だと登録できない"do
     @user.nickname = ""
    @user.valid?
    expect(@user.errors.full_messages).to include "Nickname can't be blank"
    end

    it "メールアドレスが空だと登録できない"do
    @user.email = ""
    @user.valid?
    expect(@user.errors.full_messages).to include "Email can't be blank"
    end
  
    it "パスワードが空だと登録できない"do
      @user.password = ""
     @user.valid?
    expect(@user.errors.full_messages).to include "Password can't be blank"
    end

    it "パスワードが一致しないと登録できない"do
      @user.password = ""
     @user.valid?
    expect(@user.errors.full_messages).to include "Password can't be blank"
    end
  
    it "passwordが5文字以下では登録できない"do
     @user.password = "00000"
     @user.password_confirmation = "00000"
     @user.valid?
     expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end
    
    it "passwordが数字のみでは登録できない"do
    @user.password = "000000"
    @user.valid?
    expect(@user.errors.full_messages).to include("Password Include both letters and numbers")
    end

    it "passwordが全角では登録できない"do
    @user.password = "全角６文字よ"
    @user.valid?
    expect(@user.errors.full_messages).to include("Password Include both letters and numbers")
    end

    it "last_nameが空だと登録できない"do
      @user.last_name = ""
     @user.valid?
     expect(@user.errors.full_messages).to include "Last name can't be blank"
    end

    it "first_nameが空だと登録できない"do
      @user.first_name = ""
     @user.valid?
     expect(@user.errors.full_messages).to include "First name can't be blank"
    end
    
    it "last_name_kanaが空だと登録できない"do
      @user.last_name_kana = ""
     @user.valid?
     expect(@user.errors.full_messages).to include "Last name kana can't be blank"
    end
  
    it "first_name_kanaが空だと登録できない"do
      @user.first_name_kana = ""
     @user.valid?
     expect(@user.errors.full_messages).to include "First name kana can't be blank"
    end

    it "birthがないと登録できない"do
      @user.birth = ""
     @user.valid?
    expect(@user.errors.full_messages).to include "Birth can't be blank"
    end
  
    it "passwordが半角英数混合でなければ登録できない"do
      @user.password = "aaaaaaa"
     @user.valid?
    expect(@user.errors.full_messages).to include "Password Include both letters and numbers"
    end

    it "first_nameが全角でなければ登録できない"do
      @user.first_name = "test"
    @user.valid?
    expect(@user.errors.full_messages).to include "First name Full-width characters"
    end

    it "last_nameが全角でなければ登録できない"do
      @user.first_name = "test"
      @user.valid?
      expect(@user.errors.full_messages).to include "First name Full-width characters"
    end

    it "first_name_kanaが全角カタカナでなければ登録できない"do
      @user.first_name = "test"
    @user.valid?
    expect(@user.errors.full_messages).to include "First name Full-width characters"
    end

    it "last_name_kanaが全角カタカナでなければ登録できない"do
      @user.first_name = "test"
    @user.valid?
    expect(@user.errors.full_messages).to include "First name Full-width characters"
    end
  
  end
end
