OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '262400797282327', 'df85b5d5b6e0ab963a1e2ebda7d3e30f'
end