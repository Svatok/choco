FactoryBot.define do
  factory :product_image do
    product
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'fixtures', 'images', 'product_image.jpg'), 'image/jpg') }
    position 1
    current true
  end
end
