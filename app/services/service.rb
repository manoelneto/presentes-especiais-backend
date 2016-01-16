class Service

  def self.new_item params
    resource_class.new
  end

  def self.index params
    resource_class.all
  end

  def self.find id, params={}
    resource_class.find id
  end

  def self.destroy params
    find(params['id'], params).destroy
  end

  def self.create params
    new_item(params).save
  end

  def self.update params, update_params
    find(params['id'], params).update(update_params)
  end

  private

    def self.resource_class
      self.resource_name.classify.constantize
    end

    def self.resource_name
      @resource_name ||= self.name.chomp("Service")
    end

    def self.resource_name_plural
      @resource_name_plural ||= resource_name.pluralize.downcase
    end

end
