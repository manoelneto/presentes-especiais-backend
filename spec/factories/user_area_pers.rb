# == Schema Information
#
# Table name: user_area_pers
#
#  id              :integer          not null, primary key
#  x1              :integer
#  x2              :integer
#  y1              :integer
#  y2              :integer
#  area_type       :string
#  image           :string
#  text            :string
#  user_per_per_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :user_area_per do
    x1 1
    x2 1
    y1 1
    y2 1
    area_type "MyString"
    image "MyString"
    text "MyString"
    user_per_per nil
  end

end
