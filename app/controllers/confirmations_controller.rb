class ConfirmationsController < Devise::ConfirmationsController
  def after_confirmation_path_for(resource_name, resource)
			super
      SignUpInfoMailer.sign_up_information(@user).deliver
  end
end