# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Smaat::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
   :tls => true,
   :address => "smtp.gmail.com",
   :port => 587,
   :domain => "gmail.com",
   :authentication => :login,
   :user_name => "andrew.cleland3",
   :password => "Csandwich1"
 }
