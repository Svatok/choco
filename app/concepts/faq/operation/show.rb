class Faq::Show < Trailblazer::Operation
  step :model!

  def model!(options, **)
    options['model'] = Faq.where(current: true).order(:position)
  end
end
