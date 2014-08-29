OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '908932899135850', '9a48ea1ca1eefd78e685c44e33d61f8f'
end