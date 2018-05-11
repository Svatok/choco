RSpec.describe Phone, type: :model do
  context 'fields' do
    it { is_expected.to have_db_column(:number).of_type(:string) }
    it { is_expected.to have_db_column(:rank).of_type(:integer) }
  end
end
