class TermsController < BaseController
  def show
    run StaticPages::Terms::Show

    render html: concept('static_pages/terms/cell/show', @model).call(:show)
  end
end
