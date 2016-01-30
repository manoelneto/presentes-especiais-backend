# == Schema Information
#
# Table name: area_editions
#
#  id         :integer          not null, primary key
#  layout_id  :integer
#  name       :string
#  required   :boolean
#  order      :integer
#  area_type  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  x1         :integer
#  y1         :integer
#  x2         :integer
#  y2         :integer
#

require 'rails_helper'

RSpec.describe AreaEdition, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
