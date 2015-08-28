FactoryGirl.define do
  factory :spree_user, class: Spree.user_class do
    email { Faker::Internet.email }
    password 'password1234'
  end
end
