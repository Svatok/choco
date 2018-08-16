class Products::Contract::Index < Reform::Form
  include Dry
  feature Coercion

  # property :filter, virtual: true, populate_if_empty: Hash do
  #   property :search, virtual: true
  #   property :scope, virtual: true
  # end

  property :page, virtual: true, populate_if_empty: Hash, default: {} do
    property :number, virtual: true, type: Types::Form::Int, default: 1
    property :size,   virtual: true, type: Types::Form::Int, default: 12
  end

  # validation do
  #   optional(:filter).maybe do
  #     schema do
  #       optional(:search).maybe(:str?)
  #       optional(:scope).maybe(included_in?: Constants::Order::SCOPE_NAMES)
  #     end
  #   end
  # end
end
