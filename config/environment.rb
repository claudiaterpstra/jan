# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.smtp_settings = {
  :address => 'smtp.gmail.com',
  :port => '587',
  :domain => 'gmail.com',
  :user_name => 'terpstra.claudia@gmail.com',
  :password => '',
  :authentication => 'plain',
  :enable_starttls_auto => true
}
