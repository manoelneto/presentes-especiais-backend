# == Schema Information
#
# Table name: themes
#
#  id               :integer          not null, primary key
#  spree_product_id :integer
#  name             :string
#  default          :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  picture          :string
#

class Theme < ActiveRecord::Base
  belongs_to :spree_product, inverse_of: :themes, class_name: 'Spree::Product'
  has_many :personalizations, inverse_of: :theme, dependent: :destroy
  accepts_nested_attributes_for :personalizations

  mount_uploader :picture, AdminImageUploader

  validates_presence_of :name
end
