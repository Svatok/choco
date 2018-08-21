module Finder
  class Product < ::Product
    scope(:selected_query, ->(scope_name) { scope_queries[scope_name]&.call(self) })

    def self.ransackable_scopes(_auth_object = nil)
      %i[selected_query]
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
