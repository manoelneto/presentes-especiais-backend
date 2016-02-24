# == Schema Information
#
# Table name: carts
#
#  id            :integer          not null, primary key
#  spree_user_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :cart do
    spree_user nil
  end

end
