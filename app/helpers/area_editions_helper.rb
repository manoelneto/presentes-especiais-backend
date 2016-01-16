module AreaEditionsHelper
  AREA_EDITIONS_ATTRIBUTES = [
    :area_edition_attributes
  ]

  mattr_reader *AREA_EDITIONS_ATTRIBUTES

  @@area_edition_attributes = [
    :id, :name, :required, :order, :area_type,
    :x1, :y1, :x2, :y2
  ]
end
