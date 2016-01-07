# == Schema Information
#
# Table name: personalizations
#
#  id         :integer          not null, primary key
#  theme_id   :integer
#  name       :string
#  order      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  picture    :string
#

FactoryGirl.define do
  factory :personalization do
    theme nil
picture ""
name "MyString"
order 1
  end

end
