# == Schema Information
#
# Table name: personalizations
#
#  id         :integer          not null, primary key
#  theme_id   :integer
#  name       :string
#  order      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  picture    :string
#

require 'rails_helper'

RSpec.describe Personalization, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
