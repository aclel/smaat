class RegistrationsController < Devise::RegistrationsController
	 def new
    @user = User.new
    @user.subjects.build
  end

  def sign_up_params
		params.require(resource_name).permit!
  end
end