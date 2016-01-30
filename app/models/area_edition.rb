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

class AreaEdition < ActiveRecord::Base
  belongs_to :layout, inverse_of: :area_editions
  validates_presence_of :x1, :y1, :x2, :y2, :name
end
