Devise.secret_key = "170d55261979db8d6b1431eebcf723daa763f5bef8bec24e778faeeb078f5fed07b8c862b2c9a2c7284a9b10ca923c2ce871"

Devise.setup do |config|
  config.omniauth :facebook_access_token, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']
end
