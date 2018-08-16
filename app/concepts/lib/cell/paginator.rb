class Lib::Cell::Paginator < Trailblazer::Cell
  WINDOW = 2

  def page_numbers
    first_page = model.current_page - WINDOW
    last_page = model.current_page + WINDOW
    Array(first_page..last_page)
  end

  def first_page_tag
    return if model.first_page? || (model.current_page - WINDOW) <= 1
    link = link_to '1', products_path(url_params(1))
    '<li>' + link + '</li>'
  end

  def prev_page_tag
    return unless model.prev_page
    link = link_to '<i class="fa fa-angle-left" aria-hidden="true"></i>', products_path(url_params(model.prev_page))
    '<li>' + link + '</li>'
  end

  def page_tag(page_number)
    return if page_number < 1 || page_number > model.total_pages
    class_name = page_number == model.current_page ? 'active' : nil
    link = link_to page_number, products_path(url_params(page_number))
    "<li class='#{class_name}'>" + link + '</li>'
  end

  def next_page_tag
    return unless model.next_page
    link = link_to '<i class="fa fa-angle-right" aria-hidden="true"></i>', products_path(url_params(model.next_page))
    '<li>' + link + '</li>'
  end

  def last_page_tag
    return if model.last_page? || (model.current_page + WINDOW) >= model.total_pages
    link = link_to model.total_pages, products_path(url_params(model.total_pages))
    '<li>' + link + '</li>'
  end

  private

  def url_params(value)
    new_params = options[:url_params]
    new_params[:page][:number] = value
    new_params
  end
end
