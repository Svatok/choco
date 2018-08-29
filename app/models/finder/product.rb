module Finder
  class Product < ::Product
    scope(:selected_query, ->(scope_name) { scope_queries[scope_name]&.call(self) })
    scope(:with_types, ->(*types) { tagged_with(types, on: :types, any: true) })
    scope(:with_occasions, ->(*occasions) { tagged_with(occasions, on: :occasions, any: true) })

    def self.ransackable_scopes(_auth_object = nil)
      %i[selected_query with_types with_occasions]
    end

    def self.scope_queries
      queries = [
        Products::PopularQuery,
        Products::NewQuery,
        Products::MostViewQuery,
        Products::MinPriceFirstQuery,
        Products::MaxPriceFirstQuery
      ]
      Hash[Constants::Products::SCOPE_NAMES.keys.zip(queries)]
    end
  end
end
