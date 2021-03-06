module Bot
  module DiscordCommands
    # Ping command
    module Ping
      extend Discordrb::Commands::CommandContainer
      command(:ping,
              description: 'Sends pong message with ping delay.',
              usage: "#{BOT.prefix}ping") do |event|
        m = event.respond 'Pong!'
        m.edit "Pong! `#{(Time.now - event.timestamp) * 1000} ms`"
      end
    end
  end
end
