Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  namespace :admin do
    resource :session, only: %i[show create destroy], path: :login
  end

  resource :landing_page, only: :show, path: '/'
  resources :products, only: %i[index show]
end
