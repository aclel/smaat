class ConfirmationsController < Devise::ConfirmationsController
	rescue_from Exception, :with => :redirect
  def after_confirmation_path_for(resource_name, resource)
			super
      SignUpInfoMailer.sign_up_information(@user).deliver
  end

  private
		def redirect
			redirect_to "http://smaat.com.au", :alert => "An email has been to you which contains important registration information."
		end
end