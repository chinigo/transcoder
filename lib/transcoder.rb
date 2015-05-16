require 'rubygems'
require 'bundler/setup'

require 'dotenv'
require 'open3'
require 'optparse'
require 'ostruct'
require 'pry'
require 'shellwords'

module Transcoder; end

Dir.glob("#{File.expand_path(File.dirname(__FILE__))}/**/*.rb").each {|f| require f}
