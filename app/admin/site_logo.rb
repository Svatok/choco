ActiveAdmin.register Admin::SiteLogo, as: 'SiteLogo' do
  menu parent: 'Header Settings'
  config.batch_actions = false
  config.filters = false

  permit_params :logo, :current

  index do
    selectable_column
    column(:logo) { |site_logo| image_tag(site_logo.logo.url, height: 25) }
    column :current
    actions
  end

  show do
    attributes_table do
      row(:logo) { |site_logo| image_tag(site_logo.logo.url) }
      row :current
    end
  end

  form(html: { multipart: true }) do |f|
    f.inputs 'Site Logo' do
      f.input :logo, as: :file
      f.input :current
    end
    f.actions
  end
end
