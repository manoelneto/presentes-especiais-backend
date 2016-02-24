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

FactoryGirl.define do
  factory :cart_item do
    cart nil
    user_per nil
    spree_product nil
    quantity 1
    price 1
  end

end
