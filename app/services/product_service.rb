class ProductService < Service

  def self.find id, options={}
    resource_class.find_by slug: id
  end

  private

    def self.resource_class
      @resource_class ||= Spree::Product
    end

end
