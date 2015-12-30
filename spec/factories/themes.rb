# == Schema Information
#
# Table name: themes
#
#  id                   :integer          not null, primary key
#  spree_product_id     :integer
#  picture_file_name    :string
#  picture_content_type :string
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#  name                 :string
#  default              :boolean
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

FactoryGirl.define do
  factory :theme do
    spree_product nil
picture ""
name "MyString"
default false
  end

end
