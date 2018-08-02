class Section < ApplicationRecord
  enum section_type: %i[offers upcoming_offers featured_products best_sellers new_arrivals]
  enum status: %i[current test disabled]

  has_many :new_arrivals, dependent: :destroy
  has_many :offers, dependent: :destroy
  has_one :special_offer, dependent: :destroy
  has_one :upcoming_offer, dependent: :destroy

  has_many :section_product_promotions, dependent: :destroy

  has_many :featured_products_promotions, -> { featured_products }, through: :section_product_promotions,
                                                                    source: :product_promotion
  has_many :featured_products, through: :featured_products_promotions, source: :product

  has_many :best_sellers_promotions, -> { best_sellers }, through: :section_product_promotions,
                                                          source: :product_promotion
  has_many :best_sellers, through: :best_sellers_promotions, source: :product
end
