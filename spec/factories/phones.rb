FactoryBot.define do
  factory :phone do
    number { FFaker.numerify('##########') }
  end
end
