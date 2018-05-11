RSpec.describe HeaderLink, type: :model do
  context 'fields' do
    it { is_expected.to have_db_column(:title).of_type(:string) }
    it { is_expected.to have_db_column(:url).of_type(:string) }
    it { is_expected.to have_db_column(:ancestry).of_type(:string) }
    it { is_expected.to have_db_column(:rank).of_type(:integer) }
  end
end
