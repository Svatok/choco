ActiveAdmin.register Admin::ProductCategory, as: 'ProductCategory' do
  config.batch_actions = false
  config.filters = false

  permit_params :name, :position

  actions :all, except: :show
  sortable tree: true,
           sorting_attribute: :position,
           parent_method: :parent,
           children_method: :children,
           roots_method: :roots,
           roots_collection: proc { ProductCategory.roots }

  index as: :sortable do
    label :name
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end
end
