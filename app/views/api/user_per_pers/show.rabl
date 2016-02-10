object @user_per_per
attributes *user_per_per_attributes

child(:user_area_pers => :user_area_pers) do
  extends "api/user_area_pers/show"
end

