module Transcoder
  class CLI < Struct.new(:argv)

    def run
      begin
        parser.parse(argv)

        display_help if options.help

        validate_arguments

      rescue OptionParser::ParseError, BadArgument => e
        puts "#{e.message}\n\n"
        display_help
      end
    end

    private


    # Can't throw a MissingArgument b/c any ::ParseError is caught by OptionParser
    class BadArgument < Exception; end


    def display_help
      puts parser
      exit(1)
    end


    def validate_arguments
      raise OptionParser::MissingArgument.new('--output') unless options.output_directory
      raise OptionParser::MissingArgument.new('--input') unless options.input_path
    end


    def options
      @__options ||=
        OpenStruct.new(
          input_path:   nil,
          output_directory:  nil
        )
    end


    def parser
      @__parser ||= OptionParser.new do |opts|
        opts.banner = "Transcode video files to a standard format.\n\n" +
          "Usage: transcoder [OPTIONS] -i path/to/sources -o path/to/destination\n\n"

        opts.on('-i', '--input=MANDATORY', 'Video file or directory containing video files.') do |input_path|
          validate_exists(input_path)
          options.input_path = input_path
        end

        opts.on('-o', '--output=MANDATORY', 'Directory to place the transcoded video files.') do |output_directory|
          validate_exists(output_directory)
          validate_writeable(output_directory)
          options.output_directory = output_directory
        end

        opts.on('--help', 'Display this help message.') do |help|
          options.help = help
        end
      end
    end


    def validate_exists(path)
      if path == '' || !File.expand_path(path)
        raise BadArgument.new("Invalid argument: #{path} does not exist.")
      end
    end


    def validate_writeable(directory)
      if !File.writable?( File.expand_path(directory) )
        raise BadArgument.new("Invalid argument: #{directory} is not writeable.")
      end
    end

  end # CLI
end # Transcoder
