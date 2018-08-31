class FaqsController < BaseController
  def show
    run Faq::Show

    render html: concept('faq/cell/show', @model).call(:show)
  end
end
