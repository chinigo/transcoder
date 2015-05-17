module Transcoder::Data
  class File < Struct.new(:filename)

    DATE_REGEXP = '(?<year>\d{2,4})[.-](?<month>\d{1,2})[.-](?<date>\d{1,2})'
    SERIAL_REGEXP = 'S(?<season>\d+)E(?<episode>\d+)'

    def show_name
      stripped.
        gsub(Regexp.new("(\\d{4}\.|#{DATE_REGEXP}|#{SERIAL_REGEXP}).*"), '').
        gsub('.', ' ').
        strip
    end

    def season
      ( serial_matches[:season] || date_matches[:year] ).gsub(/\A0/, '')
    end

    def episode
      if serial_matches[:season] && serial_matches[:episode]
        return serial_matches[:episode].gsub(/\A0/, '')
      end

      if date_based?
        return "#{date_matches[:year]}-#{date_matches[:month]}-#{date_matches[:date]}"
      end
    end

    private

    def stripped
      @__stripped ||= filename.gsub(/(720|1080).*\Z/, '')
    end

    def serial_matches
      @__serial_matches ||= Regexp.new(SERIAL_REGEXP).match(stripped) || {}
    end

    def date_matches
      @__date_matches ||= Regexp.new(DATE_REGEXP).match(stripped) || {}
    end

    def date_based?
      date_matches[:year] && date_matches[:month] && date_matches[:date]
    end

  end
end
