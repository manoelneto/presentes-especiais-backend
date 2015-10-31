module Themes
  module ThemeHelpers
    ATTRIBUTES = [
      :themes_attributes,
    ]

    mattr_reader *ATTRIBUTES

    @@themes_attributes = [
      :id
    ]
  end
end
