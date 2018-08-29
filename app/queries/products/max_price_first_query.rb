module Products
  class MaxPriceFirstQuery
    def self.call(relation = Product.all)
      relation.order(price: :desc)
    end
  end
end
