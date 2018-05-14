FactoryBot.define do
  factory :banner do
    title { FFaker::Lorem.word }
    description { FFaker::Lorem.paragraph }
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'fixtures', 'landing_page', 'banner.png'), 'image/png') }
    current false
  end
end
