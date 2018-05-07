Rails.application.routes.draw do
  resource :landing_page, only: :show, path: '/'
end
