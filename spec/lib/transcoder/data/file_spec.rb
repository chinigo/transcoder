describe Transcoder::Data::File do
  [
    { input: 'Adventure.Time.S06E32.Friends.Forever.720p.HDTV.x264-W4F[rarbg]'                          , show: 'Adventure Time'                     , season: '6'    , episode: '32'         } ,
    { input: 'Archer.2009.S06E13.720p.HDTV.x264-KILLERS[rarbg]'                                         , show: 'Archer'                             , season: '6'    , episode: '13'         } ,
    { input: 'Childrens.Hospital.US.S06E03.720p.HDTV.x264-BAJSKORV[rarbg]'                              , show: 'Childrens Hospital US'              , season: '6'    , episode: '3'          } ,
    { input: 'Comedy.Bang.Bang.S04E11.720p.HDTV.x264-YesTV[rarbg]'                                      , show: 'Comedy Bang Bang'                   , season: '4'    , episode: '11'         } ,
    { input: 'Comedy.Bang.Bang.S04E12.720p.WEB-DL.AAC2.0.H.264-BTN[rarbg]'                              , show: 'Comedy Bang Bang'                   , season: '4'    , episode: '12'         } ,
    { input: 'Community.S06E04.INTERNAL.720p.WebRip.x264-FiHTV[rarbg]'                                  , show: 'Community'                          , season: '6'    , episode: '4'          } ,
    { input: 'Community.S06E06.720p.WEBRip.x264-BATV[rarbg]'                                            , show: 'Community'                          , season: '6'    , episode: '6'          } ,
    { input: 'Community.S06E07.720p.WEBRip.x264-TASTETV[rarbg]'                                         , show: 'Community'                          , season: '6'    , episode: '7'          } ,
    { input: 'Family.Guy.S13E15.720p.HDTV.x264-KILLERS[rarbg]'                                          , show: 'Family Guy'                         , season: '13'   , episode: '15'         } ,
    { input: 'Family.Guy.S13E16.720p.HDTV.X264-DIMENSION[rarbg]'                                        , show: 'Family Guy'                         , season: '13'   , episode: '16'         } ,
    { input: 'Game.Of.Thrones.S05E03.720p.HDTV.x264-0SEC[rarbg]'                                        , show: 'Game Of Thrones'                    , season: '5'    , episode: '3'          } ,
    { input: 'Game.Of.Thrones.S05E04.PROPER.720p.HDTV.x264-0SEC[rarbg]'                                 , show: 'Game Of Thrones'                    , season: '5'    , episode: '4'          } ,
    { input: 'Game.of.Thrones.S05E02.720p.HDTV.x264-IMMERSE[rarbg]'                                     , show: 'Game of Thrones'                    , season: '5'    , episode: '2'          } ,
    { input: 'Game.of.Thrones.S05E02.PROPER.720p.HDTV.x264-BATV[rarbg]'                                 , show: 'Game of Thrones'                    , season: '5'    , episode: '2'          } ,
    { input: 'Jeopardy!.S2015E63.2015-03-30.mp4'                                                        , show: 'Jeopardy!'                          , season: '2015' , episode: '63'         } ,
    { input: 'Justified.S06E11.720p.HDTV.X264-DIMENSION[rarbg]'                                         , show: 'Justified'                          , season: '6'    , episode: '11'         } ,
    { input: 'Last.Week.Tonight.With.John.Oliver.S02E08.720p.HDTV.x264-BATV[rarbg]'                     , show: 'Last Week Tonight With John Oliver' , season: '2'    , episode: '8'          } ,
    { input: 'Last.Week.Tonight.With.John.Oliver.S02E12.REPACK.720p.HDTV.x264-BATV[rarbg]'              , show: 'Last Week Tonight With John Oliver' , season: '2'    , episode: '12'         } ,
    { input: 'Louie.S05E01.720p.HDTV.x264-IMMERSE[rarbg]'                                               , show: 'Louie'                              , season: '5'    , episode: '1'          } ,
    { input: 'Louie.S05E02.720p.HDTV.x264-KILLERS[rarbg]'                                               , show: 'Louie'                              , season: '5'    , episode: '2'          } ,
    { input: 'Louie.S05E06.720p.HDTV.X264-DIMENSION[rarbg]'                                             , show: 'Louie'                              , season: '5'    , episode: '6'          } ,
    { input: 'Mad.Men.S07E08.720p.HDTV.X264-DIMENSION[rarbg]'                                           , show: 'Mad Men'                            , season: '7'    , episode: '8'          } ,
    { input: 'Maron.S01E01.Internet.Troll.720p.WEB-DL.DD5.1.H.264-Coo7[rarbg]'                          , show: 'Maron'                              , season: '1'    , episode: '1'          } ,
    { input: 'Maron.S03E01.720p.HDTV.x264-KILLERS[rarbg]'                                               , show: 'Maron'                              , season: '3'    , episode: '1'          } ,
    { input: 'Modern.Family.S06E19.720p.HDTV.X264-DIMENSION[rarbg]'                                     , show: 'Modern Family'                      , season: '6'    , episode: '19'         } ,
    { input: 'Silicon.Valley.S02E01.720p.HDTV.x264-IMMERSE[rarbg]'                                      , show: 'Silicon Valley'                     , season: '2'    , episode: '1'          } ,
    { input: 'Silicon.Valley.S02E04.720p.HDTV.x264-0SEC[rarbg]'                                         , show: 'Silicon Valley'                     , season: '2'    , episode: '4'          } ,
    { input: 'Silicon.Valley.S02E04.PROPER.720p.HDTV.x264-0SEC[rarbg]'                                  , show: 'Silicon Valley'                     , season: '2'    , episode: '4'          } ,
    { input: 'The.Americans.2013.S03E10.720p.HDTV.x264-KILLERS.mkv'                                     , show: 'The Americans'                      , season: '3'    , episode: '10'         } ,
    { input: 'The.Big.Bang.Theory.S08E19.720p.HDTV.X264-DIMENSION[rarbg]'                               , show: 'The Big Bang Theory'                , season: '8'    , episode: '19'         } ,
    { input: 'The.Daily.Show.2015.04.06.Gene.Baur.720p.HDTV.x264-CROOKS[rarbg]'                         , show: 'The Daily Show'                     , season: '2015' , episode: '2015-04-06' } ,
    { input: 'The.Daily.Show.2015.04.13.Adam.Horovitz.720p.HDTV.x264-BATV[rarbg]'                       , show: 'The Daily Show'                     , season: '2015' , episode: '2015-04-13' } ,
    { input: 'The.Simpsons.S26E18.720p.HDTV.x264-KILLERS[rarbg]'                                        , show: 'The Simpsons'                       , season: '26'   , episode: '18'         } ,
    { input: 'The.Simpsons.S26E19.720p.HDTV.X264-DIMENSION[rarbg]'                                      , show: 'The Simpsons'                       , season: '26'   , episode: '19'         } ,
    { input: 'The.Soup.2015.04.03.720p.HDTV.x264-W4F[rarbg]'                                            , show: 'The Soup'                           , season: '2015' , episode: '2015-04-03' } ,
    { input: 'The.Soup.2015.04.10.720p.HDTV.x264-FiHTV[rarbg]'                                          , show: 'The Soup'                           , season: '2015' , episode: '2015-04-10' } ,
    { input: 'The.Venture.Bros.S05E05.720p.HDTV.x264-EVOLVE[rarbg]'                                     , show: 'The Venture Bros'                   , season: '5'    , episode: '5'          } ,
    { input: 'The.Walking.Dead.S00E35.Inside.the.Walking.Dead.PROPER.720p.HDTV.x264-BATV.mkv'           , show: 'The Walking Dead'                   , season: '0'    , episode: '35'         } ,
    { input: 'The.Walking.Dead.S00E36.Inside.The.Walking.Dead.Walker.University.720p.HDTV.x264-W4F.mkv' , show: 'The Walking Dead'                   , season: '0'    , episode: '36'         } ,
    { input: 'VICE.S03E05.HDTV.x264-BATV[ettv]'                                                         , show: 'VICE'                               , season: '3'    , episode: '5'          } ,
    { input: 'Veep.S02E05.720p.HDTV.x264-0SEC[rarbg]'                                                   , show: 'Veep'                               , season: '2'    , episode: '5'          } ,
    { input: 'Veep.S04E05.PROPER.720p.HDTV.x264-0SEC[rarbg]'                                            , show: 'Veep'                               , season: '4'    , episode: '5'          } ,
  ].each do |example|
    describe example[:input] do
      subject { described_class.new(example[:input]) }
      let(:output_directory) { '/tmp' }

      its(:show_name) { should eq(example[:show]) }
      its(:season) { should eq(example[:season]) }
      its(:episode) { should eq(example[:episode]) }
    end
  end
end
