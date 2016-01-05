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

class Layout < ActiveRecord::Base
  belongs_to :personalization, inverse_of: :layouts
  has_many :area_editions, inverse_of: :layout, dependent: :destroy

  accepts_nested_attributes_for :area_editions

  validates_presence_of :name
end
