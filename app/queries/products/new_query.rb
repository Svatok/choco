module Products
  class NewQuery
    def self.call(relation = Product.all)
      relation.joins(joins_sql)
              .select('products.*', 'MIN(product_promotions.position) as position')
              .group('products.id')
              .order('MIN(product_promotions.position), products.id DESC')
    end

    def self.joins_sql
      "LEFT JOIN (
         SELECT product_promotions.*
         FROM product_promotions
         WHERE product_promotions.promotion_type = #{ProductPromotion.promotion_types[:new_products]}
       ) as product_promotions ON product_promotions.product_id = products.id"
    end
  end
end
