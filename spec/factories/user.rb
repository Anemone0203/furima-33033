FactoryBot.define do
  factory :user do
    nickname                {Faker::Name}
    email                   {Faker::Internet.free_email}
    password                {"a00000"}
    last_name               {"田中"}
    first_name              {"田中"}
    last_name_kana          {"タナカ"}
    first_name_kana         {"タナカ"}
    birth                   {"2011-11-11"}
  end
end