class LandingPagesController < BaseController
  def show
    run LandingPage::Show

    render LandingPage::Cell::Show, result['model']
  end
end
