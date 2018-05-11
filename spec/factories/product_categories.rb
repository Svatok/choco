FactoryBot.define do
  factory :product_category do
    name { FFaker::Product.product_name }
    ancestry nil
  end
end
