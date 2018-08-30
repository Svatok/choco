class ContactsController < BaseController
  def show
    run StaticPages::Contacts::Show

    render html: concept('static_pages/contacts/cell/show', @model, context: { flash: flash }).call(:show)
  end
end
