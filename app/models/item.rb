class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  with_options presence: true do
  validates :title
  validates :text
  validates :category_id
  validates :condition_id
  validates :delivery_id
  validates :prefecture_id
  validates :arrival_id
  validates :price
 end
  belongs_to :category
  belongs_to :condition
  belongs_to :delivery
  belongs_to :prefecture
  belongs_to :arrival
  belongs_to :user
  has_one_attached :image
end
