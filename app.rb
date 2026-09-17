require 'sinatra'
require 'mhartl_palindrome'

# get '/' do
#   'hello, world!'
# end

get '/' do
  @title = 'Home'
  erb :index #,:layout => :page
    # This means, to render the ERB template file views/index.erb and return its output as the HTTP response.
end

get '/about' do
  @title = 'About'
  erb :about
end

get '/palindrome' do
  @title = 'Palindrome Detector'
  erb :palindrome
end

# This code allows you to inspect the parameters of the site or code that was entered.
post '/check' do
  @phrase = params[:phrase]
  erb :result
end