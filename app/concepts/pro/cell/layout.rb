module Pro::Cell
  class Layout < Trailblazer::Cell
    include ActionView::Helpers::CsrfHelper

    layout :layout
  end
end
