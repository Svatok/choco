RSpec.describe SectionProductPromotion, type: :model do
  context 'relations' do
    it { is_expected.to belong_to(:section) }
    it { is_expected.to belong_to(:product_promotion) }
  end
end
