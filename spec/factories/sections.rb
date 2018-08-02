FactoryBot.define do
  factory :section do
    title { FFaker::Lorem.word }
    status { Section.statuses[:current] }

    trait :featured_products do
      section_type { :featured_products }

      transient do
        count 1
      end

      after(:create) do |section, evaluator|
        create_list(:section_product_promotion, evaluator.count,
                    section: section, product_promotion: create(:product_promotion, :featured_product))
      end
    end

    trait :best_sellers do
      section_type { :best_sellers }

      transient do
        count 1
      end

      after(:create) do |section, evaluator|
        create_list(:section_product_promotion, evaluator.count,
                    section: section, product_promotion: create(:product_promotion, :best_seller))
      end
    end
  end
end
