require 'dotenv'

Dotenv.load('.env.local') if File.exists?('.env.local')

module Transcoder
  Config = {
    handbrake: {
      executable: ENV['HANDBRAKE_EXECUTABLE']
    }
  }
end
