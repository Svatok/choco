RSpec.describe LandingPage::Show do
  describe 'Success' do
    let!(:featured_products_section) { create :section, :featured_products }
    let!(:best_sellers_section) { create :section, :best_sellers }

    subject { described_class.call({}) }

    it 'returns products' do
      expect(subject['model'].featured_products.featured_products).to eq featured_products_section.featured_products
      expect(subject['model'].best_sellers.best_sellers).to eq best_sellers_section.best_sellers
      expect(subject).to be_success
    end
  end
end
