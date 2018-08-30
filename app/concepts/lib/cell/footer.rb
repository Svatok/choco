module Lib::Cell
  class Footer < Trailblazer::Cell
    def contact
      Contact.take
    end

    def address
      contact.attributes.slice('address_line', 'city', 'country_name').values.join(', ')
    end

    def email
      link_to contact.email, "mailto:#{contact.email}"
    end

    def social_networks
      SocialNetwork.all.order(:position).map do |network|
        class_name = Constants::SocialNetworks::ICON_CLASSES[network.name.to_sym]
        link_to "<i class='#{class_name}' aria-hidden='true'></i>", network.url
      end
    end
  end
end
