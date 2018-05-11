module Admin
  class SiteLogo < ::SiteLogo
    validates :logo, presence: true
  end
end
