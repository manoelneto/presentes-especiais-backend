# == Schema Information
#
# Table name: user_per_pers
#
#  id                      :integer          not null, primary key
#  personalization_picture :string
#  layout_id               :integer
#  user_per_id             :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

FactoryGirl.define do
  factory :user_per_per do
    personalization_picture "MyString"
    layout nil
    user_per nil
  end

end
