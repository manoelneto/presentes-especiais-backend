# == Schema Information
#
# Table name: layouts
#
#  id                 :integer          not null, primary key
#  personalization_id :integer
#  name               :string
#  order              :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

FactoryGirl.define do
  factory :layout do
    personalization nil
name "MyString"
order 1
  end

end
