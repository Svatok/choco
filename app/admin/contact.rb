ActiveAdmin.register Admin::Contact, as: 'Contact' do
  config.batch_actions = false
  config.filters = false

  permit_params :address_line, :city, :country_name, :email
end
