FactoryBot.define do
  factory :item do
    title           { '商品名' }
    text            { '商品説明' }
    category_id     { 2 }
    condition_id    { 2 }
    delivery_id     { 2 }
    prefecture_id   { 2 }
    arrival_id      { 2 }
    price           { 300 }

    association :user
    after(:build) do |item|
      item.image.attach(io: File.open('public/apple-touch-icon.png'), filename: 'apple-touch-icon.png')
    end
  end
end
