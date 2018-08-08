RSpec.describe Admin::Banner, type: :model do
  it { expect(described_class).to be < Banner }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:image) }
end
