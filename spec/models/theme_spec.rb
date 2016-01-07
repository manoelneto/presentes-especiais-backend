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

require 'rails_helper'

RSpec.describe Theme, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
