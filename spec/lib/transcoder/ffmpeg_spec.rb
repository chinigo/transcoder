require 'spec_helper'

describe Transcoder::FFmpeg do
  describe '#info' do

    before { allow(Open3).to receive(:popen3).and_return([double, double, double(:stderr, readlines: output)]) }

    context 'when given a valid file' do
      describe 'video' do
        let(:output) { [
          'Stream #0:0(und): Video: h264 (High) (avc1 / 0x31637661), yuv420p(tv, bt709), 1280x720, 4417 kb/s, 23.97 fps, 23.98 tbr, 90k tbn, 180k tbc (default)'
        ] }

        subject { described_class.new.info('path/to/file').videos[0] }

        its(:stream_no)   { should == '0' }
        its(:codec)       { should == 'h264 (High) (avc1 / 0x31637661)' }
        its(:dimensions)  { should == '1280x720' }
        its(:bitrate)     { should == '4417 kb/s' }
        its(:fps)         { should == '23.97' }
      end # video

      describe 'audio' do
        let(:output) { [
          'Stream #0:1(eng): Audio: aac (mp4a / 0x6134706D), 48000 Hz, stereo, fltp, 159 kb/s (default)',
          'Stream #0:2: Audio: ac3, 48000 Hz, 5.1(side), fltp, 384 kb/s (default)'
        ] }

        subject { described_class.new.info('path/to/file').audios }

        its('first.stream_no')    { should == '1' }
        its('last.stream_no')     { should == '2' }
        its('first.codec')        { should == 'aac (mp4a / 0x6134706D)' }
        its('last.codec')         { should == 'ac3' }
        its('first.sample_rate')  { should == '48000 Hz' }
        its('last.sample_rate')   { should == '48000 Hz' }
        its('first.bitrate')      { should == '159 kb/s' }
        its('last.bitrate')       { should == '384 kb/s' }

        its('first.channels')     { should == 'stereo' }
        its('last.channels')      { should == '5.1(side)' }

      end # audio
    end # valid file
  end
end
