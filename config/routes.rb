Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  namespace :admin do
    resource :session, only: %i[show create destroy], path: :login
  end

  resource :landing_page, only: :show, path: '/'
  resources :products, only: %i[index show]

  resource :shipping, only: :show
  resource :about_us, only: :show
  resource :payment, only: :show
  resource :return, only: :show
  resource :contacts, only: :show
  resource :terms, only: :show

  resources :messages, only: %i[index create]
end
