class AddSpreeUserToUserPers < ActiveRecord::Migration
  def change
    add_reference :user_pers, :spree_user, index: true, foreign_key: true
  end
end
