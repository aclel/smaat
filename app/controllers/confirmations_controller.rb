class ConfirmationsController < Devise::ConfirmationsController
	def do_confirm
    @confirmable.confirm!
    set_flash_message :notice, :confirmed
    sign_in_and_redirect(resource_name, @confirmable)
    SignUpInfoMailer.sign_up_information.deliver
  end
end