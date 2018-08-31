class Messages::Contract::Create < Reform::Form
  include Dry
  feature Coercion

  property :name
  property :email
  property :subject
  property :message_text

  validation do
    required(:name).filled(:str?)
    required(:email).filled(format?: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i)
    required(:subject).filled(:str?)
    required(:message_text).filled
  end
end
