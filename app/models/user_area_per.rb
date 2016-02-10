# == Schema Information
#
# Table name: user_area_pers
#
#  id              :integer          not null, primary key
#  x1              :integer
#  x2              :integer
#  y1              :integer
#  y2              :integer
#  area_type       :string
#  image           :string
#  text            :string
#  user_per_per_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class UserAreaPer < ActiveRecord::Base
  belongs_to :user_per_per, inverse_of: :user_area_pers
end
