RSpec.describe LandingPage::Show do
  describe 'Success' do
    let!(:featured_products) { create_list :product, 2, featured: true }
    let!(:best_sellers) { create_list :product, 2, best_seller: true }

    subject { described_class.call({}) }

    it 'returns products' do
      expect(subject['model'].featured_products).to eq featured_products
      expect(subject['model'].best_sellers).to eq best_sellers
      expect(subject).to be_success
    end
  end
end
