FactoryBot.define do
  factory :site_logo do
    logo { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'fixtures', 'logos', 'logo.png'), 'image/png') }
  end
end
