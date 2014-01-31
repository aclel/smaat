class ConfirmationsController < Devise::ConfirmationsController
  def after_confirmation_path_for(resource_name, resource)
			after_sign_in_path_for(resource)
      SignUpInfoMailer.sign_up_information.deliver
  end
end