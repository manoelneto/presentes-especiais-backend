module UserAreaPersHelper
  USER_AREA_PER_ATTRIBUTES = [
    :user_area_per_attributes
  ]

  mattr_reader *USER_AREA_PER_ATTRIBUTES

  @@user_area_per_attributes = [
    :id, :x1, :x2, :y1, :y2, :area_type, :picture, :text
  ]
end
