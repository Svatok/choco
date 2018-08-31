ActiveAdmin.register Admin::Faq, as: 'Faq' do
  permit_params :question, :answer, :position, :current

  config.batch_actions = false
  config.filters = false

  actions :all
  sortable tree: false, sorting_attribute: :position

  scope('Current') { |scope| scope.where(current: true) }
  scope('Other') { |scope| scope.where(current: false) }

  index as: :sortable do
    label(:question)
    actions
  end

  show do
    attributes_table do
      row :question
      row :answer
      row :current
    end
  end

  form do |f|
    f.inputs 'FAQ' do
      f.input :question
      f.input :answer
      f.input :current
    end
    f.actions
  end
end
