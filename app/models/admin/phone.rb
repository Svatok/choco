module Admin
  class Phone < ::Phone
    validates :number, presence: true
  end
end
