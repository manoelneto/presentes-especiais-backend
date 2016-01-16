class LayoutService < NestedService

  private

    def self.nested_service_class
      @nested_service_class ||= PersonalizationService
    end
end
