class StaticPages::Shipping::Show < Trailblazer::Operation
  step :model!

  def model!(options, **)
    options['model'] = StaticPage.find_by!(page: :shipping, current: true)
  end
end
