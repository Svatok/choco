class Products::Contract::Index < Reform::Form
  include Dry
  feature Coercion

  property :scope, virtual: true, default: Constants::Products::SCOPE_NAMES.keys.first
  property :view_type, virtual: true
  property :category_id, virtual: true
  property :types, virtual: true, type: Types::Form::Array
  property :occasions, virtual: true, type: Types::Form::Array

  property :price_from, virtual: true, type: Types::Form::Int
  property :price_to, virtual: true, type: Types::Form::Int

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
