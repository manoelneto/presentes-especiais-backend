module LayoutsHelper
  LAYOUTS_ATTRIBUTES = [
    :layout_attributes
  ]

  mattr_reader *LAYOUTS_ATTRIBUTES

  @@layout_attributes = [
    :id, :name, :order
  ]
end
