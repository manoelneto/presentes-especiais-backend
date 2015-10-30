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

require 'rails_helper'

RSpec.describe Identity, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
