# == Schema Information
#
# Table name: identities
#
#  id            :integer          not null, primary key
#  spree_user_id :integer
#  provider      :string
#  uid           :string
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :identity do
    spree_user nil
    provider "MyString"
    uid "MyString"
    name "MyString"
  end

end
