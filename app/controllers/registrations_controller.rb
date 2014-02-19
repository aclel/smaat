class RegistrationsController < Devise::RegistrationsController
	def new
    @user = User.new
    @user.subjects.build
  end

  def sign_up_params
		params.require(resource_name).permit!
  end

  def create	
  	build_resource(sign_up_params)

    if resource.save
      yield resource if block_given?
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        respond_with resource, :location => after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, :location => after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end

  	# send sign up info to parent
  	SignUpInfoMailer.sign_up_information(@user).deliver
  	# send email to admin
    NotificationMailer.notify(@user).deliver
  
		flash[:notice] = "You have successfully signed up. An email has been sent which contains important registration information."
  end
end