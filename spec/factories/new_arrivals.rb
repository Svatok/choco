FactoryBot.define do
  factory :new_arrival do
    url { FFaker::Internet.http_url }
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'fixtures', 'landing_page', 'new_arrival.jpg'), 'image/jpeg') }
    position 0
    section
  end
end
