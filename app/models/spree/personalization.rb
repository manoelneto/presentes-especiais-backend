
module Spree
  class Personalization < ActiveRecord::Base
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

    belongs_to :product, class_name: 'Spree::Product', inverse_of: :personalizations, foreign_key: 'spree_product_id'
    has_many :themes, class_name: 'Spree::Theme', through: :personalization_themes
    has_many :personalization_themes, foreign_key: 'spree_personalization_id'
  end
end
