RSpec.describe SocialNetwork, type: :model do
  context 'fields' do
    it { is_expected.to have_db_column(:url).of_type(:string) }
    it { is_expected.to have_db_column(:position).of_type(:integer) }
  end

  context 'enum' do
    it do
      is_expected.to define_enum_for(:name).with_values(
        %i[facebook
           twitter
           instagram
           pinterest
           google
           youtube]
      )
    end
  end
end
