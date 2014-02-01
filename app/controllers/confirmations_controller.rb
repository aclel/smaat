class ConfirmationsController < Devise::ConfirmationsController
	rescue_from Exception, :with => :redirect
  def after_confirmation_path_for(resource_name, resource)
			super
      NotificationMailer.notify(@user).deliver
      SignUpInfoMailer.sign_up_information(@user).deliver
  end

  private
		def redirect
			redirect_to root_path
			flash[:notice] = "Your account has been confirmed. An email has been sent which contains important registration information."
		end
end