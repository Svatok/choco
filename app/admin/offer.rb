ActiveAdmin.register Admin::Offer, as: 'Offer' do
  belongs_to :section

  menu false
  config.batch_actions = false
  config.filters = false

  permit_params :title, :image, :url, :section_id, :position

  actions :all
  sortable tree: false, sorting_attribute: :position

  index as: :sortable do
    label(:image) do |offer|
      image_tag(offer.image.url, height: 70) + ' ' + offer.title
    end
    actions
  end

  show do
    attributes_table do
      row(:image) { |offer| image_tag(offer.image.url) }
      row :title
      row :url
      row :section
    end
  end

  form(html: { multipart: true }) do |f|
    f.inputs 'Offer' do
      f.input :image, as: :file
      f.input :title
      f.input :url
      f.input :section, as: :select, collection: Section.all.collect { |section| [section.section_type, section.id] }
    end
    f.actions
  end
end
