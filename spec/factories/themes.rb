# == Schema Information
#
# Table name: themes
#
#  id               :integer          not null, primary key
#  spree_product_id :integer
#  name             :string
#  default          :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  picture          :string
#

FactoryGirl.define do
  factory :theme do
    spree_product nil
picture ""
name "MyString"
default false
  end

end
