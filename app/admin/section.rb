ActiveAdmin.register Admin::Section, as: 'Section' do
  menu parent: 'Landing Page'
  config.batch_actions = false
  config.filters = false

  permit_params do
    [
      :title, :status, :section_type,
      admin_offers_attributes: %i[id title image url],
      admin_special_offer_attributes: %i[id title short_description image url],
      admin_upcoming_offer_attributes: %i[id title short_title description image url]
    ]
  end

  actions :all

  index do
    column :title
    column :section_type
    column :status
    actions
  end

  show do |section|
    attributes_table do
      row :title
      row :status
      row :section_type
    end

    if section.offers.present?
      panel link_to 'OFFERS', admin_section_offers_path(section_id: section.id) do
        table_for section.offers.order(:position), sortable: true do
          column :title
          column(:image) { |offer| image_tag(offer.image.url, height: 50) }
          column :url
          column('Actions') do |offer|
            span link_to 'View', admin_section_offer_path(section_id: offer.section_id, id: offer.id)
            span link_to 'Edit', edit_admin_section_offer_path(section_id: offer.section_id, id: offer.id)
            span link_to 'Delete', admin_section_offer_path(section_id: offer.section_id, id: offer.id),
                         method: :delete, data: { confirm: 'Are you sure?' }
          end
        end
      end
    end

    if section.special_offer.present?
      panel link_to 'SPECIAL OFFER', admin_special_offer_path(section.special_offer.id) do
        attributes_table_for section.special_offer do
          row(:image) { |offer| image_tag(offer.image.url, height: 200) }
          row :title
          row :short_description
          row :url
          row('Actions') do |offer|
            span link_to 'View', admin_special_offer_path(offer.id)
            span link_to 'Edit', edit_admin_special_offer_path(offer.id)
            span link_to 'Delete', admin_special_offer_path(offer.id),
                         method: :delete, data: { confirm: 'Are you sure?' }
          end
        end
      end
    end

    if section.upcoming_offer.present?
      panel link_to 'UPCOMING OFFER', admin_upcoming_offer_path(section.upcoming_offer.id) do
        attributes_table_for section.upcoming_offer do
          row(:image) { |offer| image_tag(offer.image.url, height: 200) }
          row :title
          row :short_title
          row :description
          row :url
          row('Actions') do |offer|
            span link_to 'View', admin_upcoming_offer_path(offer.id)
            span link_to 'Edit', edit_admin_upcoming_offer_path(offer.id)
            span link_to 'Delete', admin_upcoming_offer_path(offer.id),
                         method: :delete, data: { confirm: 'Are you sure?' }
          end
        end
      end
    end
  end

  form(html: { multipart: true }) do |f|
    f.inputs 'Offer' do
      f.input :title
      f.input :status
      f.input :section_type
    end
    f.has_many :admin_offers, new_record: true do |o|
      o.input :title
      o.input :image, as: :file
      o.input :url
    end
    f.has_many :admin_special_offer, class: 'has_one', new_record: true do |so|
      so.input :image, as: :file
      so.input :title
      so.input :short_description
      so.input :url
    end
    f.has_many :admin_upcoming_offer, class: 'has_one', new_record: true do |uo|
      uo.input :image, as: :file
      uo.input :title
      uo.input :short_title
      uo.input :description
      uo.input :url
    end
    f.actions
  end
end
