RSpec.describe SiteLogo, type: :model do
  context 'fields' do
    it { is_expected.to have_db_column(:logo).of_type(:string) }
    it { is_expected.to have_db_column(:current).of_type(:boolean) }
  end
end
