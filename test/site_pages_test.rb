require_relative 'test_helper'

class PalindromeAppTest < Minitest::Test
  include Rack::Test::Methods
  # This is a Ruby module that is included to simulate HTTP requests against a Rack-based web application without actually starting a real web server

  def app
    Sinatra::Application
  end

  def test_index
    get '/'
    assert last_response.ok?
      # Because the get request automatically creates a last_response object, you can check if the page exists by looking for the last_response object.
  end

  def test_about
    get '/about'
    assert last_response.ok?
  end

  def test_palindrome
    get '/palindrome'
    assert last_response.ok?
  end
end