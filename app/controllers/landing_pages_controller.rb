class LandingPagesController < ApplicationController
  def show
    run LandingPage::Show

    render html: cell(LandingPage::Cell::Show, result['model'], layout: Pro::Cell::Application)
  end
end
