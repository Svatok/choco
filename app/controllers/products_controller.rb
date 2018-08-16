class ProductsController < ApplicationController
  def index
    result = run Products::Index

    render html: concept('products/cell/index', @model, url_params: result['url_params']).call(:show)
  end
end
