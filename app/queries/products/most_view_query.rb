module Products
  class MostViewQuery
    def self.call(relation = Product.all)
      relation.order(views_count: :desc)
    end
  end
end
