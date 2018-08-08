FactoryBot.define do
  factory :contact do
    address_line { FFaker::Address.street_address }
    city { FFaker::Address.city }
    country { FFaker::Address.country }
    email { FFaker::Internet.email }
  end
end
