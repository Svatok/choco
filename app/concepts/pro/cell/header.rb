module Pro::Cell
  class Header < Trailblazer::Cell
    def header_links
      HeaderLink.roots.order(:rank)
    end

    def logo
      logo_url = SiteLogo.find_by(current: true)&.logo&.url || ''
      link_to(image_tag(logo_url, alt: 'Logo'), landing_page_path, class: 'navbar-brand')
    end
  end
end
