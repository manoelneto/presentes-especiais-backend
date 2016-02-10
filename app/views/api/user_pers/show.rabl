object @user_per
attributes *user_per_attributes

child(:user_per_pers => :user_per_pers) do
  extends "api/user_per_pers/show"
end

