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
  belongs_to :personalization
end
