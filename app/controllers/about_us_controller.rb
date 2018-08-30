class AboutUsController < BaseController
  def show
    run StaticPages::AboutUs::Show

    render html: concept('static_pages/about_us/cell/show', @model).call(:show)
  end
end
