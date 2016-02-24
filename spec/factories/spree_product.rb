FactoryGirl.define do
  factory :spree_product, class: Spree::Product do
    name "name"
    price 10
    shipping_category
  end
end
