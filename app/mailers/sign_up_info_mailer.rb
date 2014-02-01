class SignUpInfoMailer < ActionMailer::Base
  default from: "smaatenquiries@outlook.com"

  def sign_up_information(user)
  	attachments['parent_student_agreement.pdf'] = File.read('/app/assets/attachments/parent_student_agreement.pdf')
  	attachments['payment_detail_form.pdf'] = File.read('/app/assets/attachments/payment_detail_form.pdf')
  	attachments['term1_notice.pdf'] = File.read('/app/assets/attachments/term1_notice.pdf')
    mail to: user.email, subject: "SMAAT Registration Information"
  end
end
