class StaticPages::AboutUs::Show < Trailblazer::Operation
  step :model!

  def model!(options, **)
    options['model'] = StaticPage.find_by!(page: :about_us, current: true)
  end
end
