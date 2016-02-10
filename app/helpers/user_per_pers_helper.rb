module UserPerPersHelper
  USER_PER_PER_ATTRIBUTES = [
    :user_per_per_attributes
  ]

  mattr_reader *USER_PER_PER_ATTRIBUTES

  @@user_per_per_attributes = [
    :id, :personalization_picture, :layout_id
  ]
end
