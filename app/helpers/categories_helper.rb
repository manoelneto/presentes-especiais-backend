module CategoriesHelper
  CATEGORY_ATTRIBUTES = [
    :category_attributes
  ]

  mattr_reader *CATEGORY_ATTRIBUTES

  @@category_attributes = [
    :id, :name
  ]
end
