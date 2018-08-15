FactoryBot.define do
  factory :product do
    name { FFaker::Product.product_name }
    short_description { FFaker::Lorem.sentence }
    description { FFaker::Lorem.paragraph }
    product_category
    availability :in_stock
    price { FFaker.numerify('1##.#5').to_f }
    old_price 0.00
    views_count { rand(1..50) }
  end
end
