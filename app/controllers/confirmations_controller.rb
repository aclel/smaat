class ConfirmationsController < Devise::ConfirmationsController
  def after_confirmation_path_for(resource_name, resource)
			super
			begin
      	SignUpInfoMailer.sign_up_information(@user).deliver
      rescue 
      	redirect_to root_path
      end
  end
end