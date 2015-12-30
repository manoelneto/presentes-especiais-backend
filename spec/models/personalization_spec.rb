# == Schema Information
#
# Table name: personalizations
#
#  id                   :integer          not null, primary key
#  theme_id             :integer
#  picture_file_name    :string
#  picture_content_type :string
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#  name                 :string
#  order                :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'rails_helper'

RSpec.describe Personalization, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
