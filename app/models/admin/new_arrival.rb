module Admin
  class NewArrival < ::NewArrival
    validates :image, :url, presence: true
  end
end
