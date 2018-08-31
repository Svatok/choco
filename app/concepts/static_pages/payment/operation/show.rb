class StaticPages::Payment::Show < Trailblazer::Operation
  step :model!

  def model!(options, **)
    options['model'] = StaticPage.find_by!(page: :payment, current: true)
  end
end
