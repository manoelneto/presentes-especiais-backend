class ThemeService < NestedService

  private

    def self.nested_field
      "spree_product"
    end

    def self.nested_service_class
      @nested_service_class ||= ProductService
    end

end
