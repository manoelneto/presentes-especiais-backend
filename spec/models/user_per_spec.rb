# == Schema Information
#
# Table name: user_pers
#
#  id            :integer          not null, primary key
#  theme_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  spree_user_id :integer
#

require 'rails_helper'

RSpec.describe UserPer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
