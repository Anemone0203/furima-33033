class Item < ApplicationRecord

  validate :title
  validate :text
  validate :category_id
  validate :condition_id
  validate :delivery_id
  validate :prefecture_id
  validate :date_id
  validate :price
 
end
