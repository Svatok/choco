RSpec.describe ProductPromotion, type: :model do
  context 'relations' do
    it { is_expected.to belong_to(:product) }
  end

  context 'enum' do
    it { is_expected.to define_enum_for(:promotion_type).with_values(%i[featured_products best_sellers]) }
  end
end
