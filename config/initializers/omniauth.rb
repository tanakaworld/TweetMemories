Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TW_CONSUMER_KEY'], ENV['TW_CONSUMER_SECRET']
end