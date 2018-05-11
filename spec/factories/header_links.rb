FactoryBot.define do
  factory :header_link do
    title { FFaker::Lorem.word }
    url { FFaker::Internet.http_url }
  end
end
