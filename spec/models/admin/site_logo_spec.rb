RSpec.describe Admin::SiteLogo, type: :model do
  it { expect(described_class).to be < SiteLogo }

  it { is_expected.to validate_presence_of(:logo) }
end
