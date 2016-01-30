# == Schema Information
#
# Table name: area_editions
#
#  id         :integer          not null, primary key
#  layout_id  :integer
#  name       :string
#  required   :boolean
#  order      :integer
#  area_type  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  x1         :integer
#  y1         :integer
#  x2         :integer
#  y2         :integer
#

FactoryGirl.define do
  factory :area_edition do
    layout nil
name "MyString"
required false
order 1
area_type "MyString"
  end

end
