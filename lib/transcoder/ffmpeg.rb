module Transcoder
  class FFmpeg

    def info(file)
      unless @__info
        stdin, stdout, stderr = Open3.popen3(cmd(file))
        @__info = parse_info(stderr.readlines)
      end

      @__info
    end

    private

    def parse_info(output)
      OpenStruct.new(
        videos: parse_video(output),
        audios: parse_audio(output)
      )
    end

    def parse_video(output)
      output.select do |line|
        line.match /Stream #\d:.*Video:/
      end.map do |match|
        OpenStruct.new(
          stream_no:   extract(match, /Stream #\d:(\d+)/),
          codec:       extract(match, /Video: (.*?),/),
          dimensions:  extract(match, /(\d{3,}x\d{3,})/),
          bitrate:     extract(match, /(\d+ [km]b\/s)/),
          fps:         extract(match, /([\d.]+) ?fps/)
        )
      end
    end

    def parse_audio(output)
      output.select do |line|
        line.match /Stream #\d:.*Audio:/
      end.map do |match|
        OpenStruct.new(
          stream_no:   extract(match, /Stream #\d:(\d+)/),
          codec: extract(match, /Audio: (.*?),/),
          sample_rate: extract(match, /(\d+ .?Hz)/),
          bitrate: extract(match, /(\d+ [km]b\/s)/),
          channels: extract(match, /(mono|stereo|5\.1.*?),/)
        )
      end
    end

    def extract(line, regex)
      if matches = line.match(regex)
        matches[1]
      end
    end


    def cmd(file)
      "#{ffprobe_executable} #{Shellwords.escape file}"
    end

    def ffmpeg_executable
      Transcoder.config.ffmpeg.executable
    end

    def ffprobe_executable
      Transcoder.config.ffprobe.executable
    end

  end
end
