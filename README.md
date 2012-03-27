# TweetboxZero

Personal script to delete all my Twitter DM's

## Usage

Edit run.rb and fill the following info:

    Twitter.configure do |config|
      config.consumer_key       = ''
      config.consumer_secret    = ''
      config.oauth_token        = ''
      config.oauth_token_secret = ''
    end

You can get the keys at [http://dev.twitter.com/apps/new]()

Now, bundle, run it. Be happy. (Takes a while, depending on your DMs)

    bundle
    ruby run.rb

## Development

Run the test case:

    bundle
    ruby -I lib test/lib/tweetbox_zero_test.rb

# License

(The MIT License)

Copyright © 2012 David Padilla

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the ‘Software’), to deal in the
Software without restriction, including without limitation the rights to use, copy,
modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so, subject to the
following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED ‘AS IS’, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
