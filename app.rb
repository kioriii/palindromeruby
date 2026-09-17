require 'sinatra'
require 'mhartl_palindrome'

# get '/' do
#   'hello, world!'
# end

get '/' do
  @title = 'Home'
  erb :index #,:layout => :page
end

get '/about' do
  @title = 'About'
  erb :about
end

get '/palindrome' do
  @title = 'Palindrome Detector'
  erb :palindrome
end