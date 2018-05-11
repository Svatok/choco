ActiveAdmin.register Admin::HeaderLink, as: 'HeaderLink' do
  menu parent: 'Header Settings'
  config.batch_actions = false
  config.filters = false

  permit_params :title, :url, :rank

  actions :all, except: :show
  sortable tree: true,
           sorting_attribute: :rank,
           parent_method: :parent,
           children_method: :children,
           roots_method: :roots,
           roots_collection: proc { HeaderLink.roots }

  index as: :sortable do
    label :title
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :url
    end
    f.semantic_errors
    f.actions
  end
end
