class SignUpInfoMailer < ActionMailer::Base
  default from: "smaatenquiries@outlook.com"

  def sign_up_information(user)
  	@user = user
  	attachments['parent_student_agreement.pdf'] = File.read(Rails.root.join("app/assets/attachments/parent_student_agreement.pdf"))
  	attachments['payment_detail_form.pdf'] = File.read(Rails.root.join("app/assets/attachments/payment_detail_form.pdf"))
  	attachments['term3_notice_2015.pdf'] = File.read(Rails.root.join("app/assets/attachments/term3_notice_2015.pdf"))
    mail to: user.email, subject: "SMAAT Registration Information"
  end
end
