RSpec.describe Contact, type: :model do
  context 'fields' do
    it { is_expected.to have_db_column(:address_line).of_type(:string) }
    it { is_expected.to have_db_column(:city).of_type(:string) }
    it { is_expected.to have_db_column(:country_name).of_type(:string) }
    it { is_expected.to have_db_column(:email).of_type(:string) }
  end
end
