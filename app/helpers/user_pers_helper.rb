module UserPersHelper
  USER_PER_ATTRIBUTES = [
    :user_per_attributes
  ]

  mattr_reader *USER_PER_ATTRIBUTES

  @@user_per_attributes = [
    :id, :theme_id
  ]
end
