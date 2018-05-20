FactoryBot.define do
  factory :offer do
    title { FFaker::Lorem.word }
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'fixtures', 'landing_page', 'offer.jpg'), 'image/jpeg') }
    url { FFaker::Internet.http_url }
    position 0
    section
  end
end
