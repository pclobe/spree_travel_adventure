module Spree
  Product.class_eval do

    def adventure?
      self.product_type == Spree::ProductType.find_by_name('adventure')
    end
    
    def self.adventures
      where(product_type_id: Spree::ProductType.find_by_name('adventure').id )
    end

  end
end
