# == Schema Information
#
# Table name: identities
#
#  id            :integer          not null, primary key
#  spree_user_id :integer
#  provider      :string
#  uid           :string
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#


class Identity < ActiveRecord::Base
  belongs_to :spree_user, inverse_of: :identities, class_name: 'Spree::User'
  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider

  def self.find_for_oauth(auth)
    where(uid: auth.uid, provider: auth.provider).first
  end

  # def self.find_for_oauth(auth)
  #   find_or_create_by(uid: auth.uid, provider: auth.provider) do |identity|
  #     identity.name = auth.extra.raw_info.name
  #   end
  # end
end
