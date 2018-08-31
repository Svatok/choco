module Admin
  class Faq < ::Faq
    validates :question, :answer, presence: true
  end
end
