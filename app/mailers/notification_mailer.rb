class NotificationMailer < ActionMailer::Base
  default from: "smaatenquiries@outlook.com"

  def notify(user)
    @user = user
    mail to: "smaatenquiries@outlook.com", subject: "Another SMAAT Minion has joined the ranks..."
  end
end
