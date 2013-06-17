require 'twitter'

class TweetboxZero
  def self.destroy_message_batch(messages)
    total = messages.size
    messages.each_with_index do |m,index|
      id_str = m.attrs[:id_str]
      puts "Deleting #{id_str} #{index}/#{total}"
      Twitter.direct_message_destroy id_str
    end
  end
end
