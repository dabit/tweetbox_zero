require 'bundler'
Bundler.setup
Bundler.require

require 'twitter'
$: << 'lib'
require 'tweetbox_zero'

Twitter.configure do |config|
  config.consumer_key       = ''
  config.consumer_secret    = ''
  config.oauth_token        = ''
  config.oauth_token_secret = ''
end

puts "Direct Messages Received"
while (messages = Twitter.direct_messages(:count => 200)).size > 0
  TweetboxZero.destroy_message_batch(messages)
end

puts "Direct Messages Sent"
while (messages = Twitter.direct_messages_sent(:count => 200)).size > 0
  TweetboxZero.destroy_message_batch(messages)
end

