ActiveAdmin.register Admin::UpcomingOffer, as: 'UpcomingOffer' do
  menu false
  config.batch_actions = false
  config.filters = false

  permit_params :short_title, :title, :description, :image, :url, :section_id

  actions :show, :edit, :update, :destroy

  show do
    attributes_table do
      row(:image) { |offer| image_tag(offer.image.url, height: 300) }
      row :short_title
      row :title
      row :description
      row :url
      row(:section) { |offer| link_to offer.section.section_type.upcase, admin_section_path(offer.section_id) }
    end
  end

  form(html: { multipart: true }) do |f|
    f.inputs 'UpcomingOffer' do
      f.input :image, as: :file
      f.input :title
      f.input :short_title
      f.input :description
      f.input :url
      f.input :section, as: :select, collection: Section.all.collect { |section| [section.section_type, section.id] }
    end
    f.actions do
      f.action :submit
    end
  end
end
