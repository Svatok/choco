module Admin
  class Section < ::Section
    validates :title, :status, :section_type, presence: true
  end
end
