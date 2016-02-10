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

FactoryGirl.define do
  factory :user_per do
    theme nil
  end

end
