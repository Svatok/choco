RSpec.describe Product, type: :model do
  context 'fields' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:short_description).of_type(:string) }
    it { is_expected.to have_db_column(:description).of_type(:text) }
    it { is_expected.to have_db_column(:price).of_type(:decimal) }
    it { is_expected.to have_db_column(:old_price).of_type(:decimal) }
    it { is_expected.to have_db_column(:views_count).of_type(:integer) }
    it { is_expected.to have_db_column(:new_product).of_type(:boolean) }
    it { is_expected.to have_db_column(:best_seller).of_type(:boolean) }
    it { is_expected.to have_db_column(:popular).of_type(:boolean) }
    it { is_expected.to have_db_column(:featured).of_type(:boolean) }
  end

  context 'relations' do
    it { is_expected.to belong_to(:product_category) }
  end

  context 'enum' do
    it { is_expected.to define_enum_for(:availability).with_values(%i[in_stock not_available expected]) }
  end
end
