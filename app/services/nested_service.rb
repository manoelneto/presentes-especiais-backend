class NestedService < Service

  def self.index params
    nested_item = nested_item params
    nested_item.send(resource_name_plural).all
  end

  def self.new_item params
    new_resource = super params
    new_resource.send "#{nested_resource_name.downcase}=", nested_item(params)
    new_resource
  end

  def self.find id, params={}
    nested_item = nested_item params
    nested_item.send(nested_resource_name_plural).find id
  end

  private

    def self.nested_item params
      nested_service_class.find params["#{nested_resource_name.downcase}_id"], params
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
