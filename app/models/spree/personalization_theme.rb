class Spree::PersonalizationTheme < ActiveRecord::Base
  belongs_to :personalization, foreign_key: 'spree_personalization_id'
  belongs_to :theme, foreign_key: 'spree_theme_id'
end
