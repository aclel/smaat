class RegistrationsController < Devise::RegistrationsController
	 def new
    @user = User.new
    @user.subjects.build
  end
end