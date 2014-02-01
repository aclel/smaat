class SignUpInfoMailer < ActionMailer::Base
  default from: "andrew.cleland3@gmail.com"

  def sign_up_information(user)
    mail to: user.email, subject: "SMAAT Sign Up Information"
  end
end
