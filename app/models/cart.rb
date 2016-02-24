# == Schema Information
#
# Table name: carts
#
#  id            :integer          not null, primary key
#  spree_user_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Cart < ActiveRecord::Base
  belongs_to :spree_user, class_name: 'Spree::User'
  has_many :cart_items, inverse_of: :cart
end
