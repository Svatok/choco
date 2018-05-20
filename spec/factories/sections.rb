FactoryBot.define do
  factory :section do
    title { FFaker::Lorem.word }
    status { Offer.statuses[:current] }
  end
end
