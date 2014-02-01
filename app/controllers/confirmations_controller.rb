class ConfirmationsController < Devise::ConfirmationsController
	rescue_from Exception, :with => :redirect
  def after_confirmation_path_for(resource_name, resource)
			super
      SignUpInfoMailer.sign_up_information(@user).deliver
  end

  private
		def redirect
			redirect_to root_path
		end
end