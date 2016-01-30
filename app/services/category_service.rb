class CategoryService < Service

  private

    def self.resource_class
      @resource_class ||= Spree::Category
    end

end
