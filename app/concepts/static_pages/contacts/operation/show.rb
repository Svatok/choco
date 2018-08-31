class StaticPages::Contacts::Show < Trailblazer::Operation
  step :model!

  def model!(options, **)
    options['model'] = StaticPage.find_by!(page: :contacts, current: true)
  end
end
