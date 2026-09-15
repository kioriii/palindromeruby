ENV['RACK_ENV'] = 'test'
  # set environment before loading app

require_relative '../app'
  # load the Sinatra app
require 'rack/test'
  # Rack::Test for HTTP request helpers
require 'nokogiri'
  # HTML parsing for assertions
require 'minitest/autorun'
  # Minitest with auto-runner
require 'minitest/reporters'
  # colored/formatted output
Minitest::Reporters.use!
  # Activate the default reporter