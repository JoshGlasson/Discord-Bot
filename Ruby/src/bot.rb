require 'discordrb'
require 'ostruct'
require 'yaml'

module Bot
    if File.file? 'data/config.yaml'
        CONFIG = OpenStruct.new YAML.load_file 'data/config.yaml'
    else
        puts 'Can\'t load config file!'
        exit!
    end

    BOT = Discordrb::Commands::CommandBot.new(client_id: CONFIG.client_id, token: CONFIG.token, prefix: CONFIG.prefix)

    # Integrations
    module Integrations; end
    Dir['src/integrations/*.rb'].each { |mod| load mod }

    # Discord Commands
    module DiscordCommands; end
    Dir['src/modules/commands/*.rb'].each { |mod| load mod }
    DiscordCommands.constants.each do |mod|
        BOT.include! DiscordCommands.const_get mod
    end

    # Discord Events
    module DiscordEvents; end
    Dir['src/modules/events/*.rb'].each { |mod| load mod }
    DiscordEvents.constants.each do |mod|
        BOT.include! DiscordEvents.const_get mod
    end

    BOT.run
end