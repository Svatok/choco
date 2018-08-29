ActiveAdmin.register Admin::CatalogBanner, as: 'CatalogBanner' do
  config.batch_actions = false
  config.filters = false

  permit_params :title, :short_description, :image, :current, :url

  actions :all

  index do
    column(:image) do |banner|
      image_tag(banner.image.url, height: 70)
    end
    column :title
    column :current
    actions
  end

  show do
    attributes_table do
      row(:image) { |banner| image_tag(banner.image.url) }
      row :title
      row :short_description
      row :url
      row :current
    end
  end

  form(html: { multipart: true }) do |f|
    f.inputs 'Catalog Banner' do
      f.input :image, as: :file
      f.input :title
      f.input :short_description
      f.input :url
      f.input :current
    end
    f.actions
  end
end
