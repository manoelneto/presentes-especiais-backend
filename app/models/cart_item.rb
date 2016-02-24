# == Schema Information
#
# Table name: cart_items
#
#  id               :integer          not null, primary key
#  user_per_id      :integer
#  spree_product_id :integer
#  quantity         :integer
#  price            :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  cart_id          :integer
#

class CartItem < ActiveRecord::Base
  belongs_to :cart, inverse_of: :cart_items
  belongs_to :user_per
  belongs_to :spree_product, class_name: 'Spree::Product'
end
