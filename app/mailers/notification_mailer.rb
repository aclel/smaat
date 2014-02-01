class NotificationMailer < ActionMailer::Base
  default from: "smaatenquiries@outlook.com"

  def notify(user)
    @user = user
    mail to: "smaatenquiries@outlook.com", subject: user.first_name + user.last_name + " - Another SMAAT Minion has joined the ranks..."
  end
end
