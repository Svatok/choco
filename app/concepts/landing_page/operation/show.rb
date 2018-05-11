class LandingPage::Show < Trailblazer::Operation
  step :model!
  step :featured_products!
  step :best_sellers!

  def model!(options, **)
    options['model'] = OpenStruct.new
  end

  def featured_products!(model:, **)
    model.featured_products = Product.featured
  end

  def best_sellers!(model:, **)
    model.best_sellers = Product.best_seller
  end
end
