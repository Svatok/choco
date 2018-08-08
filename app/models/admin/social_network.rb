module Admin
  class SocialNetwork < ::SocialNetwork
    validates :url, presence: true
  end
end
