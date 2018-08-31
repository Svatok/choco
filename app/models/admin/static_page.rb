module Admin
  class StaticPage < ::StaticPage
    validates :page, :title, :body, presence: true
  end
end
