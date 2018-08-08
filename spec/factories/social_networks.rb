FactoryBot.define do
  factory :social_network do
    logo 0
    url { FFaker::Internet.http_url }
    position 1
  end
end
