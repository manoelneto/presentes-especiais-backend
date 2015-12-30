# == Schema Information
#
# Table name: personalizations
#
#  id                   :integer          not null, primary key
#  theme_id             :integer
#  picture_file_name    :string
#  picture_content_type :string
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#  name                 :string
#  order                :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

FactoryGirl.define do
  factory :personalization do
    theme nil
picture ""
name "MyString"
order 1
  end

end
