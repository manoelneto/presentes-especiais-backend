FactoryGirl.define do
  # Define your Spree extensions Factories within this file to enable applications, and other extensions to use and override them.
  #
  # Example adding this to your spec_helper will load these Factories for use:
  # require 'spree_categories/factories'

  factory :category, class: Spree::Category do
    sequence(:name) { |n| "Category ##{n} - #{Kernel.rand(9999)}" }
  end

end
