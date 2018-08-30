module Lib::Cell
  class Layout < Trailblazer::Cell
    include ActionView::Helpers::CsrfHelper

    layout :layout

    def flash
      options.dig(:context, :flash)
    end

    def body_class
      ''
    end
  end
end
