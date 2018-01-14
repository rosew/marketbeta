Clearance.configure do |config|
  config.routes = false
  config.mailer_sender = ENV['DEFAULT_EMAIL_FROM']
  config.rotate_csrf_on_sign_in = true
end
