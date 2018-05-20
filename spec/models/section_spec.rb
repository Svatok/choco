RSpec.describe Section, type: :model do
  context 'fields' do
    it { is_expected.to have_db_column(:title).of_type(:string) }
    it { is_expected.to have_db_column(:status).of_type(:integer) }
    it { is_expected.to have_db_column(:section_type).of_type(:integer) }
  end

  context 'relations' do
    it { is_expected.to have_many(:offers) }
    it { is_expected.to have_many(:new_arrivals) }
    it { is_expected.to have_many(:featured_products) }
    it { is_expected.to have_many(:best_sellers) }
    it { is_expected.to have_one(:special_offer) }
    it { is_expected.to have_one(:upcoming_offer) }
  end
end
