class LandingPagesController < BaseController
  def show
    run LandingPage::Show

    render html: concept('landing_page/cell/show', @model).call(:show)
  end
end
