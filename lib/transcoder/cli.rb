module Transcoder
  class CLI < Struct.new(:arguments)

    def run
    end

    private

    # Can't throw a MissingArgument b/c any ::ParseError is caught by OptionParser
    class BadArgument < Exception; end


    def options
      unless @__options

        @__options = OpenStruct.new(
          confirm:           false,
          input_directory:   nil,
          output_directory:  nil,
          subtitles:         true
        )

        parser = OptionParser.new do |opts|
          opts.banner = "Transcode video files to a standard format.\n\n" +
            "Usage: transcode [OPTIONS] -i path/to/sources -o path/to/destination\n\n"

          opts.on('-c', '--confirm', 'Confirm each transcode.') do |confirm|
            @__options.confirm = confirm
          end

          opts.on('-i', '--input=MANDATORY', 'Directory containing source video files.') do |input_directory|
            validate_directory(input_directory)
            @__options.input_directory = input_directory
          end

          opts.on('-o', '--output=MANDATORY', 'Directory to place the transcoded video files.') do |output_directory|
            validate_directory(output_directory)
            @__options.output_directory = output_directory
          end

          opts.on('-s', '--[no-]subtitles', 'Add any found subtitles to their corresponding. Default: true.') do |subtitles|
            @__options.subtitles = subtitles
          end

          opts.on('--help', 'Display this help message.') do |help|
            @__options.help = help
          end
        end

        if options.help
          puts parser
          exit(0)
        end

        begin
          parser.parse(arguments)

          raise OptionParser::MissingArgument.new('--output') unless options.output_directory
          raise OptionParser::MissingArgument.new('--input') unless options.input_directory

        rescue OptionParser::ParseError, BadArgument => e
          puts "#{e.message}.\n\n"
          exit(1)
        end
      end

      @__options
    end # options


    def validate_directory(directory)
      if directory == '' || !File.directory?( File.expand_path(directory) )
        raise BadArgument.new("Invalid argument: #{directory} is not a directory")
      end

      if !File.writable?( File.expand_path(directory) )
        raise BadArgument.new("Invalid argument: #{directory} is not writeable")
      end
    end # validate_directory

  end # CLI
end # Transcoder
