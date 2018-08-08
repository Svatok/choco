module LandingPage::Cell::Sections
  class NewArrivals < Trailblazer::Cell
    property :title

    def new_arrivals
      model.new_arrivals.order(:position)
    end
  end
end
