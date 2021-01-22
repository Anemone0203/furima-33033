class Delivery < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '着払い(購入者払い)' },
    { id: 3, name: '送料込み(出品者負担)' }
  ]
end
