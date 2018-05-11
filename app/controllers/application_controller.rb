class ApplicationController < ActionController::Base
  include ::Authenticable::Admin

  protect_from_forgery with: :exception
end
