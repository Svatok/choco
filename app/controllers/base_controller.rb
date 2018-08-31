class BaseController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound do
    render html: concept('not_found/cell/show').call(:show)
  end
end
