FactoryBot.define do
  factory :upcoming_offer do
    short_title { FFaker::Lorem.word }
    title { FFaker::Lorem.word }
    description { FFaker::Lorem.paragraph }
    url { FFaker::Internet.http_url }
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'fixtures', 'landing_page', 'upcoming_offer.jpg'), 'image/jpeg') }
    section
  end
end
