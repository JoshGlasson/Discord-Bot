require 'discordrb/webhooks'

module Bot
    module DiscordCommands
        module Promote extend Discordrb::Commands::CommandContainer
            command :promote do |event|
                event.channel.send_embed("Check out my blog here: ") do |embed|
                    embed.title = "Joshs Blog"
                    embed.colour = Random.bytes(3).unpack1('H*')
                    embed.url = "https://joshglasson.com"
                    embed.description = "My personal blog about Software Development, Sports, Music, and any more of my hobbies!"
                    embed.timestamp = Time.at(Time.now())
                    embed.image = Discordrb::Webhooks::EmbedImage.new(url: "https://joshglasson.com/logo.png")
                    embed.thumbnail = Discordrb::Webhooks::EmbedThumbnail.new(url: "https://joshglasson.com/logo.png")
                    embed.author = Discordrb::Webhooks::EmbedAuthor.new(name: "Josh Glasson", url: "https://joshglasson.com", icon_url: "https://joshglasson.com/logo.png")
                end
            end
        end
    end
end

