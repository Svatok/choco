RSpec.describe SpecialOffer, type: :model do
  context 'fields' do
    it { is_expected.to have_db_column(:title).of_type(:string) }
    it { is_expected.to have_db_column(:short_description).of_type(:string) }
    it { is_expected.to have_db_column(:url).of_type(:string) }
    it { is_expected.to have_db_column(:image).of_type(:string) }
  end

  context 'relations' do
    it { is_expected.to belong_to(:section) }
  end
end
