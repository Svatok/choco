FactoryBot.define do
  factory :special_offer do
    title { FFaker::Lorem.word }
    short_description { FFaker::Lorem.word }
    url { FFaker::Internet.http_url }
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'fixtures', 'landing_page', 'special_offer.jpg'), 'image/jpeg') }
    section
  end
end
