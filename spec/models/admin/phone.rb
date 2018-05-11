RSpec.describe Admin::Phone, type: :model do
  it { expect(described_class).to be < Phone }

  it { is_expected.to validate_presence_of(:number) }
end
