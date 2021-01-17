class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   validates :nickname, presence: true
  #  validatables :email, presence :true
   validates :first_name, presence: true
   validates :last_name, presence: true
   validates :first_name_kana, presence: true
   validates :last_name_kana, presence: true
   validates :birth, presence: true
   VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/
   validates :password,format: { with: VALID_PASSWORD_REGEX}
            # message: "は半角英数字 混合"
end

# has_many :items
# has_many :buys