class StaticPages::OrderReturn::Show < Trailblazer::Operation
  step :model!

  def model!(options, **)
    options['model'] = StaticPage.find_by!(page: :return, current: true)
  end
end
