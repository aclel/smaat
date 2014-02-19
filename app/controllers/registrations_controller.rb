class RegistrationsController < Devise::RegistrationsController
	def new
    @user = User.new
    @user.subjects.build
  end

  def sign_up_params
		params.require(resource_name).permit!
  end

  def create	
  	super
  	# send sign up info to parent
  	SignUpInfoMailer.sign_up_information(@user).deliver
  	# send email to admin
    NotificationMailer.notify(@user).deliver
  
		flash[:notice] = "You have successfully signed up. An email has been sent which contains important registration information."
  end
end