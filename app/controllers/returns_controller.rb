class ReturnsController < BaseController
  def show
    run StaticPages::OrderReturn::Show

    render html: concept('static_pages/order_return/cell/show', @model).call(:show)
  end
end
