FactoryBot.define do
  factory :product_promotion do
    product

    trait :best_seller do
      promotion_type :best_sellers
    end

    trait :featured_product do
      promotion_type :featured_products
    end
  end
end
