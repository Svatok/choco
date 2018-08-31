ActiveAdmin.register Admin::StaticPage, as: 'StaticPage' do
  permit_params :page, :title, :body, :current

  config.batch_actions = false
  config.filters = false

  index do
    selectable_column
    column :page
    column :title
    column :current
    actions
  end

  show do
    attributes_table do
      row :page
      row :title
      row :body
      row :current
    end
  end

  form do |f|
    f.inputs 'Page' do
      f.input :page
      f.input :title
      f.input :body, as: :medium_editor, input_html: {
        style: 'width:75%;',
        data: {
          options: '{"spellcheck":false,"toolbar":{
            "buttons":[
              "bold","italic","underline","anchor","orderedlist","unorderedlist","strikethrough","subscript",
              "superscript","pre","h1","h2","h3","h4","h5","h6","html"
            ]}}'
        }
      }
      f.input :current
    end
    f.actions
  end
end
