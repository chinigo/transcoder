require 'dotenv'

Dotenv.load('.env.local') if File.exists?('.env.local')

module Transcoder

  def self.config
    OpenStruct.new(
      ffmpeg: OpenStruct.new(
        executable: ENV['FFMPEG_EXECUTABLE']
      )
    )
  end

end
