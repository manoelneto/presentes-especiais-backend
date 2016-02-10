class UserPerService < Service
  def self.index options=nil
    resource_class.all.where(spree_user: options[:user])
  end

  def self.create create_params, options={}
    create_params[:user_per_pers_attributes].each do |attribute|
      personalization = Personalization.find attribute[:personalization_id]
      attribute[:personalization_picture] = personalization.picture.file
    end
    object = super create_params, options
  end

end
