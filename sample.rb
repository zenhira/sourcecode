require "slack-notify"
require 'clockwork'
client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
client.notify("Hello There!", "#あああああ")
include Clockwork
handler do |job|
  puts "Running #{job}"
end
every(3.minutes,"3分に1回") do
    client.notify("Hello There!", "#あああああ")
end
