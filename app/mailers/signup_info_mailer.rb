class SignupInfoMailer < ActionMailer::Base
  default from: "andrew.cleland3@gmail.com"

  def sign_up_information
    mail to: @user, subject: "SMAAT Sign Up Information"
  end
end
