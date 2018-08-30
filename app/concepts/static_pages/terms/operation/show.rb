class StaticPages::Terms::Show < Trailblazer::Operation
  step :model!

  def model!(options, **)
    options['model'] = StaticPage.find_by!(page: :terms, current: true)
  end
end
