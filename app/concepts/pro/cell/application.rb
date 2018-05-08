module Pro::Cell
  class Application < Trailblazer::Cell
    include ActionView::Helpers::CsrfHelper
  end
end
