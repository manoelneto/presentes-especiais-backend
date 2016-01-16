class NestedService < Service

  def self.index options
    nested_item = nested_item options
    nested_item.send(resource_name_plural).all
  end

  def self.new_item new_params, options
    super new_params.merge(nested_field => nested_item(options)), options
  end

  def self.find id, options={}
    nested_item = nested_item options
    nested_item.send(nested_resource_name_plural).find id
  end

  private

    def self.nested_field
      nested_resource_name.downcase
    end

    def self.nested_item options
      nested_service_class.find options["#{nested_resource_name.downcase}_id"], options
    end

    def self.nested_service_class
      raise NotImplementedError
    end

    def self.nested_resource_name
      @nested_resource_name ||= nested_service_class.name.chomp("Service")
    end

    def self.nested_resource_name_plural
      @nested_resource_name_plural ||= resource_name.pluralize.downcase
    end
end
