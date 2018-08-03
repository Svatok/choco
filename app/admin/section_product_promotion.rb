ActiveAdmin.register Admin::SectionProductPromotion, as: 'SectionProductPromotion' do
  belongs_to :section

  menu false
  config.filters = false

  permit_params :product_id, :section_id

  actions :all

  index do
    column(:promotion_type) do |section_product_promotion|
      section_product_promotion.product_promotion.promotion_type.upcase
    end
    column(:product) { |section_product_promotion| section_product_promotion.product_promotion.product }
    column(:current) { |section_product_promotion| section_product_promotion.product_promotion.current }
    actions
  end

  show do
    attributes_table do
      row(:promotion_type) { |section_product_promotion| section_product_promotion.product_promotion.promotion_type }
      row(:product) { |section_product_promotion| section_product_promotion.product_promotion.product }
      row(:current) { |section_product_promotion| section_product_promotion.product_promotion.current }
    end
  end

  form(html: { multipart: true }) do |f|
    f.inputs 'Products' do
      f.input :product_promotion, as: :select, collection: ProductPromotion.all.collect { |product_promotion|
        ["#{product_promotion.promotion_type.upcase} | #{product_promotion.product.name}", product_promotion.id]
      }
      f.input :section, as: :select, collection: Section.all.collect { |section| [section.section_type, section.id] }
    end
    f.actions
  end
end
