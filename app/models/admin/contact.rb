module Admin
  class Contact < ::Contact
    validates :email, presence: true
  end
end
