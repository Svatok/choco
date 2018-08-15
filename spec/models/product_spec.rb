RSpec.describe Product, type: :model do
  context 'fields' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:short_description).of_type(:string) }
    it { is_expected.to have_db_column(:description).of_type(:text) }
    it { is_expected.to have_db_column(:price).of_type(:decimal) }
    it { is_expected.to have_db_column(:old_price).of_type(:decimal) }
    it { is_expected.to have_db_column(:views_count).of_type(:integer) }
  end

  context 'relations' do
    it { is_expected.to belong_to(:product_category) }
    it { is_expected.to have_many(:product_images) }
  end

  context 'enum' do
    it { is_expected.to define_enum_for(:availability).with_values(%i[in_stock not_available expected]) }
  end
end
