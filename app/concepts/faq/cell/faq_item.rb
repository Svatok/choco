module Faq::Cell
  class FaqItem < Trailblazer::Cell
    property :question
    property :answer

    def heading_id
      "heading#{model.id}"
    end

    def collapse_id
      "collapse#{model.id}"
    end
  end
end
