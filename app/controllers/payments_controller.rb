class PaymentsController < BaseController
  def show
    run StaticPages::Payment::Show

    render html: concept('static_pages/payment/cell/show', @model).call(:show)
  end
end
