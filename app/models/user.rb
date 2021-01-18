class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   validates :nickname, presence: true
  
   validates :birth, presence: true
   PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i
   validates_format_of :password, with: PASSWORD_REGEX, message: 'Include both letters and numbers'
            # message: "は半角英数字 混合"
   with_options presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: 'Full-width characters' } do
    validates :first_name
    validates :last_name
   end
   with_options presence: true, format: { with: /\A[ァ-ヶー－]+\z/, message: "is invalid. Input full-width katakana characters." } do   
    validates :first_name_kana
    validates :last_name_kana
   end
end

# has_many :items
# has_many :buys