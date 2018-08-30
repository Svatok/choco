module StaticPages::Terms::Cell
  class Show < Lib::Cell::Layout
    def body_class
      'inner-page'
    end

    property :title
    property :body
  end
end
