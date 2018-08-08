ActiveAdmin.register Admin::SocialNetwork, as: 'SocialNetwork' do
  config.batch_actions = false
  config.filters = false

  permit_params :name, :url, :position

  sortable tree: false, sorting_attribute: :position

  index as: :sortable do
    label :name
    actions
  end

  show do
    attributes_table do
      row :name
      row :url
    end
  end

  form do |f|
    f.inputs 'Social Network' do
      f.input :name
      f.input :url
    end
    f.actions
  end
end
