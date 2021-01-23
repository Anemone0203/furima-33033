class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  with_options presence: true do
    validates :title
    validates :text
    with_options numericality: {other_than: 1, message: ""} do
      validates :category_id
      validates :condition_id
      validates :delivery_id
      validates :prefecture_id
      validates :arrival_id
    end
    validates :image
    validates_inclusion_of :price, in: 300..9_999_999
    # validates :price /\A[0-9]+\z/
  end
  belongs_to :category
  belongs_to :condition
  belongs_to :delivery
  belongs_to :prefecture
  belongs_to :arrival
  belongs_to :user
  has_one_attached :image
end
