RSpec.describe ProductImage, type: :model do
  context 'fields' do
    it { is_expected.to have_db_column(:image).of_type(:string) }
    it { is_expected.to have_db_column(:current).of_type(:boolean) }
    it { is_expected.to have_db_column(:position).of_type(:integer) }
  end

  context 'relations' do
    it { is_expected.to belong_to(:product) }
  end
end
