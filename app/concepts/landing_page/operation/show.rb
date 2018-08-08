class LandingPage::Show < Trailblazer::Operation
  step :model!
  success :banners!
  success :offers!
  success :upcoming_offers!
  success :featured_products!
  success :best_sellers!
  success :new_arrivals!

  def model!(options, **)
    options['model'] = OpenStruct.new
  end

  def banners!(model:, **)
    model.banners = Banner.current
  end

  def offers!(model:, **)
    model.offers = Section.find_by(section_type: :offers, status: :current)
  end

  def upcoming_offers!(model:, **)
    model.upcoming_offers = Section.find_by(section_type: :upcoming_offers, status: :current)
  end

  def featured_products!(model:, **)
    model.featured_products = Section.find_by(section_type: :featured_products, status: :current)
  end

  def best_sellers!(model:, **)
    model.best_sellers = Section.find_by(section_type: :best_sellers, status: :current)
  end

  def new_arrivals!(model:, **)
    model.new_arrivals = Section.find_by(section_type: :new_arrivals, status: :current)
  end
end
