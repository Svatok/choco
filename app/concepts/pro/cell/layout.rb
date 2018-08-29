module Pro::Cell
  class Layout < Trailblazer::Cell
    include ActionView::Helpers::CsrfHelper

    layout :layout

    def body_class
      ''
    end
  end
end
