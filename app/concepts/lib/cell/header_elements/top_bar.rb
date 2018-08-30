module Lib::Cell::HeaderElements
  class TopBar < Trailblazer::Cell
    def phones
      Phone.all.order(:rank).first(3).map { |phone| formatted_phone(phone.number) }.join(', ')
    end

    private

    def formatted_phone(number)
      "+38(#{number[0..2]})-#{number[3..5]}-#{number[6..7]}-#{number[8..9]}"
    end
  end
end
