module Admin
  class HeaderLink < ::HeaderLink
    validates :title, :url, presence: true
  end
end
