class LandingPagesController < ApplicationController
  def show
    render html: cell(LandingPage::Cell::Show, nil, layout: Pro::Cell::Application)
  end
end
