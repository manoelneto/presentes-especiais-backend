# == Schema Information
#
# Table name: user_pers
#
#  id            :integer          not null, primary key
#  theme_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  spree_user_id :integer
#

class UserPer < ActiveRecord::Base
  belongs_to :theme
  belongs_to :spree_user, class_name: 'Spree::User'
  has_many :user_per_pers, inverse_of: :user_per

  accepts_nested_attributes_for :user_per_pers
end
