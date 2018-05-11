class BaseController < ApplicationController
  def render(cell_constant, model, options: {})
    super(html: cell(cell_constant, model,
                     {
                       context: { flash: flash }
                     }.merge(options))
          )
  end
end
