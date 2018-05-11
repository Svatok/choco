ActiveAdmin.register Admin::Phone, as: 'Phone' do
  config.batch_actions = false
  config.filters = false

  permit_params :number, :rank

  sortable tree: false, sorting_attribute: :rank

  index as: :sortable do
    label(:number) do |phone|
      "(#{phone.number[0..2]})-#{phone.number[3..5]}-#{phone.number[6..7]}-#{phone.number[8..9]}"
    end
    actions
  end

  show do
    attributes_table do
      row :number
    end
  end

  form do |f|
    f.inputs 'Phone number' do
      f.input :number
    end
    f.actions
  end
end
