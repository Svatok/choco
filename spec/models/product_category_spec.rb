RSpec.describe ProductCategory, type: :model do
  context 'fields' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:ancestry).of_type(:string) }
  end

  context 'relations' do
    it { is_expected.to have_many(:products) }
  end
end
