# == Schema Information
#
# Table name: user_per_pers
#
#  id                      :integer          not null, primary key
#  personalization_picture :string
#  layout_id               :integer
#  user_per_id             :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class UserPerPer < ActiveRecord::Base
  belongs_to :layout
  belongs_to :user_per, inverse_of: :user_per_pers
  has_many :user_area_pers, inverse_of: :user_per_per

  attr_accessor :personalization_id

  accepts_nested_attributes_for :user_area_pers

  mount_uploader :personalization_picture, UserImageUploader

  # def grab_personalization_picture
  #   ap  self.personalization_id
  #   if self.personalization_id.present?
  #     personalization = Personalization.find self.personalization_id
  #     self.personalization_picture = personalization.picture.file
  #     ap self.personalization_picture
  #   end
  # end

end
