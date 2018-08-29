class ProductsController < ApplicationController
  def index
    result = run Products::Index

    unless cookies[:view_type] == result['view_type']
      cookies[:view_type] = { value: result['view_type'], expires: 1.year.from_now }
    end

    render html: concept('products/cell/index', @model, result['cell_options']).call(:show)
  end

  private

  def _run_options(options)
    options.merge('cookies' => cookies)
  end
end
