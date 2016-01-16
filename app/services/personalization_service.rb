class PersonalizationService < NestedService

  private

    def self.nested_service_class
      @nested_service_class ||= ThemeService
    end

end
