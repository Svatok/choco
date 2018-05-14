module Admin
  class Banner < ::Banner
    validates :title, :image, presence: true
  end
end
