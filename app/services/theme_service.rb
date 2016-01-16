class ThemeService < NestedService

  private

    def self.nested_field
      "product"
    end

    def self.nested_service_class
      @nested_service_class ||= ProductService
    end

end
