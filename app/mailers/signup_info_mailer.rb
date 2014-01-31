class SignupInfoMailer < ActionMailer::Base
  default from: "andrew.cleland3@gmail.com"

  def sign_up_information
    mail to: "andrew.cleland3@gmail.com", subject: "SMAAT Sign Up Information"
  end
end
