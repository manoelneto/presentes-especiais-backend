# == Schema Information
#
# Table name: layouts
#
#  id                 :integer          not null, primary key
#  personalization_id :integer
#  name               :string
#  order              :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'rails_helper'

RSpec.describe Layout, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
