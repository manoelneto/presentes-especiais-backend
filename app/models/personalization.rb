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

class Personalization < ActiveRecord::Base
  belongs_to :theme, inverse_of: :personalizations

  #paperclip
  has_attached_file :picture, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/

  validates_presence_of :name
  validates :picture, attachment_presence: true
end
