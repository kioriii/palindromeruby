# Looks like Rake/Ruby will load this file first, then run the tests on the test files that were defined. So you can define functions in here that will return the objects that you want to examine in the tests.


ENV['RACK_ENV'] = 'test'
  # set environment to the testing environment before loading app

require_relative '../app'
  # load the Sinatra app, which is named app.rb in this project
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

# Returns the document.
# Sinatra's HTTP response objects always have a body attribute representing the HTML body full page (not just the body tag)
def doc(response)
  Nokogiri::HTML(response.body)
end