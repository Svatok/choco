class Section < ApplicationRecord
  enum section_type: %i[offers upcoming_offers featured_products best_sellers new_arrivals]
  enum status: %i[current test disabled]

  has_many :new_arrivals, dependent: :destroy
  has_many :offers, dependent: :destroy
  has_one :special_offer, dependent: :destroy
  has_one :upcoming_offer, dependent: :destroy

  has_many :featured_products, dependent: :destroy
  has_many :products, through: :featured_products

  has_many :best_sellers, dependent: :destroy
  has_many :products, through: :best_sellers
end
