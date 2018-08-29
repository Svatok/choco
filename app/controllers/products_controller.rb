class ProductsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound do
    render html: concept('not_found/cell/show').call(:show)
  end

  def index
    result = run Products::Index

    unless cookies[:view_type] == result['view_type']
      cookies[:view_type] = { value: result['view_type'], expires: 1.year.from_now }
    end

    render html: concept('products/cell/index', @model, result['cell_options']).call(:show)
  end

  def show
    run Products::Show

    render html: concept('products/cell/show', @model).call(:show)
  end

  def render_not_found
    render html: concept('not_found/cell/show').call(:show), status: :not_found
  end

  private

  def _run_options(options)
    options.merge('cookies' => cookies)
  end
end
