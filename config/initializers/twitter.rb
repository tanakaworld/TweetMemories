$client = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV["TW_CONSUMER_KEY"]
  config.consumer_secret = ENV["TW_CONSUMER_SECRET"]
  # ###############################################
  # TODO 動的なアクセストークンによって個人のタイムラインを取得したい次第
  # ###############################################
  config.oauth_token = ENV["TW_ACCESS_TOKEN"]
  config.oauth_token_secret = ENV["TW_ACCESS_TOKEN_SECRET"]
end