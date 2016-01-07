module ThemesHelper
  THEMES_ATTRIBUTES = [
    :theme_attributes
  ]

  mattr_reader *THEMES_ATTRIBUTES

  @@theme_attributes = [
    :id, :name
  ]
end
