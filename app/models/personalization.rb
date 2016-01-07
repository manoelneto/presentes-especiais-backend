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

class Personalization < ActiveRecord::Base
  belongs_to :theme, inverse_of: :personalizations
  has_many :layouts, inverse_of: :personalization, dependent: :destroy

  mount_uploader :picture, AdminImageUploader

  validates_presence_of :name
end
