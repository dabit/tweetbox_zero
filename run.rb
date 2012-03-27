require 'bundler'
Bundler.setup

require 'twitter'
$: << 'lib'
require 'tweetbox_zero'

Twitter.configure do |config|
  config.consumer_key       = ''
  config.consumer_secret    = ''
  config.oauth_token        = ''
  config.oauth_token_secret = ''
end

TweetboxZero.destroy_message_batch { Twitter.direct_messages }
TweetboxZero.destroy_message_batch { Twitter.direct_messages_sent }

