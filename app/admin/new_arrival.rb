ActiveAdmin.register Admin::NewArrival, as: 'NewArrival' do
  belongs_to :section

  menu false
  config.batch_actions = false
  config.filters = false

  permit_params :image, :url, :section_id, :position

  actions :all
  sortable tree: false, sorting_attribute: :position

  index as: :sortable do
    label(:image) do |new_arrival|
      image_tag(new_arrival.image.url, height: 70)
    end
    actions
  end

  show do
    attributes_table do
      row(:image) { |new_arrival| image_tag(new_arrival.image.url) }
      row :url
      row :section
    end
  end

  form(html: { multipart: true }) do |f|
    f.inputs 'New Arrival' do
      f.input :image, as: :file
      f.input :url
      f.input :section, as: :select, collection: Section.all.collect { |section| [section.section_type, section.id] }
    end
    f.actions
  end
end
