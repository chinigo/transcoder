require 'rubygems'
require 'bundler/setup'

module Transcoder; end

Dir.glob("#{File.expand_path(File.dirname(__FILE__))}/**/*.rb").each {|f| require f}
