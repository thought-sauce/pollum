Airbrake.configure do |config|
  config.api_key = '9b84199527a4bb9bf697de85ed94fa6a'
  config.host    = 'errors.matthewrudy.com'
  config.port    = 80
  config.secure  = config.port == 443
end
