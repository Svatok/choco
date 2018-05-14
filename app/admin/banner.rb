ActiveAdmin.register Admin::Banner, as: 'Banner' do
  menu parent: 'Landing Page'
  config.batch_actions = false
  config.filters = false

  permit_params :title, :description, :image, :position, :current

  actions :all
  sortable tree: false, sorting_attribute: :position

  index as: :sortable do
    label(:image) do |banner|
      image_tag(banner.image.url, height: 70) + ' ' + banner.title
    end
    actions
  end

  show do
    attributes_table do
      row(:image) { |banner| image_tag(banner.image.url) }
      row :title
      row :description
      row :current
    end
  end

  form(html: { multipart: true }) do |f|
    f.inputs 'Banner' do
      f.input :image, as: :file
      f.input :title
      f.input :description
      f.input :current
    end
    f.actions
  end
end
