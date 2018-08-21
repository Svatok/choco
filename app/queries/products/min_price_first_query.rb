module Products
  class MinPriceFirstQuery
    def self.call(relation = Product.all)
      relation.order(:price)
    end
  end
end
