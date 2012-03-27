require 'bundler'

Bundler.setup

require 'tweetbox_zero'
require 'minitest/autorun'
require 'rr'

class MiniTest::Unit::TestCase
  include RR::Adapters::TestUnit
end

class TestTweetboxZero < MiniTest::Unit::TestCase
  def test_destroy_everything
    tweet = stub
    stub(tweet).attrs { { 'id_str' => '123456' } }
    mock(Twitter).direct_messages { [ tweet ] }
    mock(Twitter).direct_messages { [] }
    mock(Twitter).direct_message_destroy '123456'

    TweetboxZero.destroy_message_batch { Twitter.direct_messages }

    RR.verify
  end
end
