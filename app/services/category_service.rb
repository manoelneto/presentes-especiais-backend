class CategoryService < Service

  def self.destroy id, options
    c = find(id, options)
    c.products.update_all(spree_category_id: nil)
    c.destroy
  end

  private

    def self.resource_class
      @resource_class ||= Spree::Category
    end

end
