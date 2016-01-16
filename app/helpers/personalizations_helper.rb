module PersonalizationsHelper
  PERSONALIZATIONS_ATTRIBUTES = [
    :personalization_attributes
  ]

  mattr_reader *PERSONALIZATIONS_ATTRIBUTES

  @@personalization_attributes = [
    :id, :name, :order
  ]
end
