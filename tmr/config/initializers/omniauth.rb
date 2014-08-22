OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '746829888715216', '5b67cf32e893cffde8601e42639da4d0'
end