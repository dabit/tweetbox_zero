require 'twitter'

class TweetboxZero
  def self.destroy_message_batch(&block)
    messages = yield
    while messages.any?
      messages.each do |m|
        puts m.attrs["id_str"]
        Twitter.direct_message_destroy m.attrs["id_str"]
      end
      messages = yield
    end
  end
end
