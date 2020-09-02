module Bot
    module DiscordEvents
        module Online extend Discordrb::EventContainer
            ready do |event|
                puts "Logged in as #{event.bot.profile.distinct}"
                puts "Invite URL: #{event.bot.invite_url}"
            end
        end
    end
end