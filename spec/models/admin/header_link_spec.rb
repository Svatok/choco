RSpec.describe Admin::HeaderLink, type: :model do
  it { expect(described_class).to be < HeaderLink }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:url) }
end
