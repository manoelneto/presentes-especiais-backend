# == Schema Information
#
# Table name: spree_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  picture    :string
#

module Spree
  class Category < ActiveRecord::Base
    has_many :products, class_name: 'Spree::Product', inverse_of: :category, foreign_key: 'spree_category_id'

    mount_uploader :picture, AdminImageUploader
  end
end
