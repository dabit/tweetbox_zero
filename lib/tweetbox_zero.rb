require 'twitter'

class TweetboxZero
  def self.destroy_message_batch(messages)
    total = messages.size
    threads = []
    messages.each_with_index do |m,index|
      id_str = m.attrs[:id_str]
      puts "Deleting #{id_str} #{index}/#{total}"
      threads << Thread.new { Twitter.direct_message_destroy id_str }
    end

    threads.each(&:join)
  end
end
