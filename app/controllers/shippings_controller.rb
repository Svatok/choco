class ShippingsController < BaseController
  def show
    run StaticPages::Shipping::Show

    render html: concept('static_pages/shipping/cell/show', @model).call(:show)
  end
end
