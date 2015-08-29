Spree::User.class_eval do
  devise :omniauthable, :omniauth_providers => [:facebook_access_token]

  has_many :identities, inverse_of: :spree_user, foreign_key: 'spree_user_id', dependent: :destroy
  accepts_nested_attributes_for :identities

  def self.find_for_oauth(auth)
    identity = Identity.find_for_oauth(auth)

    if identity
      return identity.spree_user
    else
      return nil
    end
  end

end
